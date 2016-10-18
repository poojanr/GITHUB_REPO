/* Copyright (C) 2016 Krishna Kuntala @ Mastek <krishna.kuntala@mastek.com>
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License. */
package uk.gov.nhs.digital.ers.service.services;

import ma.glasnost.orika.MapperFacade;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import uk.gov.nhs.digital.ers.service.dao.impl.ReferralDAO;
import uk.gov.nhs.digital.ers.service.domain.ReferralRequestDTO;
import uk.gov.nhs.digital.ers.service.entities.ReferralRequest;
import uk.gov.nhs.digital.ers.service.exception.AuthenticationException;

import com.dev.ops.common.utils.TimestampUtil;
import com.dev.ops.exceptions.impl.DefaultWrappedException;

@Component
public class ReferralService {

	@Autowired
	private MapperFacade mapperFacade;

	@Autowired
	private ReferralDAO referralDAO;

	@Autowired
	private EncryptionDecryptionService encryptionDecryptionService;

	private static final Logger LOGGER = LogManager.getLogger(ReferralService.class);

	@Transactional(rollbackFor = {Exception.class})
	public ReferralRequestDTO verifyReferralDetails(final String referralNumber, final int yearOfBirth, final String password) throws DefaultWrappedException {

		ReferralRequestDTO referralRequestDTO = null;
		LOGGER.debug("Verifying referral details for referralNumber:<" + referralNumber + ">");
		try {
			final ReferralRequest referralRequest = this.referralDAO.fetchReferralByNumber(referralNumber);
			final String encodedPassword = this.encryptionDecryptionService.encrypt(password);
			if(TimestampUtil.getYear(referralRequest.getPatient().getDateOfBirth()) == yearOfBirth && encodedPassword.equals(referralRequest.getPassword())) {
				referralRequestDTO = this.mapperFacade.map(referralRequest, ReferralRequestDTO.class);
			} else {
				throw new AuthenticationException("INVALID_REFERRANCE_DETAILS");
			}
		} catch(final DefaultWrappedException e) {
			LOGGER.error("No referral found for referralNumber:<" + referralNumber + ">", e);
			throw new AuthenticationException("INVALID_REFERRANCE_DETAILS", e);
		}
		return referralRequestDTO;
	}

	@Transactional(rollbackFor = {Exception.class})
	public ReferralRequestDTO getReferralDetails(final String referralNumber) throws DefaultWrappedException {
		LOGGER.debug("Get referral details for referralNumber:<" + referralNumber + ">");
		final ReferralRequest referralRequest = this.referralDAO.fetchReferralByNumber(referralNumber);
		ReferralRequestDTO referralRequestDTO = this.mapperFacade.map(referralRequest, ReferralRequestDTO.class);
		return referralRequestDTO;
	}

}