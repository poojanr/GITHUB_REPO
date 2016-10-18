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
package uk.gov.nhs.digital.ers.service.dao.impl;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import uk.gov.nhs.digital.ers.service.entities.ReferralRequest;

import com.dev.ops.common.dao.generic.GenericDAOImpl;
import com.dev.ops.exceptions.impl.DefaultWrappedException;

@Component
public class ReferralDAOImpl extends GenericDAOImpl<ReferralRequest> implements ReferralDAO {

	private static final Logger LOGGER = LogManager.getLogger(ReferralDAOImpl.class);

	@Override
	public ReferralRequest fetchReferralByNumber(final String referralNumber) throws DefaultWrappedException {
		LOGGER.debug("Get referral request for referral number: " + referralNumber);
		final Query query = this.getEntityManager().createNamedQuery("ReferralRequest.fetchReferralByNumber", ReferralRequest.class);
		query.setParameter("referralNumber", referralNumber);
		query.setMaxResults(1);
		ReferralRequest referralRequest = null;
		try {
			referralRequest = (ReferralRequest) query.getSingleResult();
		} catch(final NoResultException e) {
			throw new DefaultWrappedException("NO_REFERRANCE_FOUND_EXCEPTION", e, new Object[] {referralNumber});
		}
		return referralRequest;
	}
}