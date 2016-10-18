/*
 *
 * Copyright (C) 2016 Krishna Kuntala @ Mastek <krishna.kuntala@mastek.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
package uk.gov.nhs.digital.ers.service.services;

import java.util.ArrayList;
import java.util.List;

import ma.glasnost.orika.MapperFacade;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import uk.gov.nhs.digital.ers.service.dao.impl.HospitalDAO;
import uk.gov.nhs.digital.ers.service.dao.impl.ReferralDAO;
import uk.gov.nhs.digital.ers.service.domain.HospitalDTO;
import uk.gov.nhs.digital.ers.service.domain.HospitalServiceDTO;
import uk.gov.nhs.digital.ers.service.entities.Hospital;
import uk.gov.nhs.digital.ers.service.entities.HospitalServiceEntity;
import uk.gov.nhs.digital.ers.service.entities.ReferralRequest;

import com.dev.ops.exceptions.impl.DefaultWrappedException;

@Component
public class HospitalService {

	@Autowired
	private MapperFacade mapperFacade;

	@Autowired
	private HospitalDAO hospitalDAO;

	@Autowired
	private ReferralDAO referralDAO;

	private static final Logger LOGGER = LogManager.getLogger(HospitalService.class);

	@Transactional(rollbackFor = {Exception.class})
	public List<HospitalDTO> getHospitals(final String referralNumber) throws DefaultWrappedException {
		LOGGER.debug("Get hospitals for referralNumber:<" + referralNumber + ">");

		List<HospitalDTO> hospitalDTOs = new ArrayList<HospitalDTO>();
		ReferralRequest referralRequest = referralDAO.fetchReferralByNumber(referralNumber);
		LOGGER.debug("Get hospitals for service id:<" + referralRequest.getService().getId() + "> and service:<" + referralRequest.getService().getDescription() + ">");
		List<Hospital> hospitals = hospitalDAO.fetchHospitalsByService(referralRequest.getService().getId());
		for(Hospital hospital : hospitals) {
			hospitalDTOs.add(mapperFacade.map(hospital, HospitalDTO.class));
		}
		return hospitalDTOs;
	}

	public List<HospitalServiceDTO> getHospitalAppointmentSlots(String referralNumber, Long hospitalId) throws DefaultWrappedException {
		LOGGER.debug("Get hospitals appointment slots for referralNumber:<" + referralNumber + ">");

		List<HospitalServiceDTO> hospitalSlotDTOs = new ArrayList<HospitalServiceDTO>();
		ReferralRequest referralRequest = referralDAO.fetchReferralByNumber(referralNumber);
		LOGGER.debug("Get appointment slots for hospital id:<" + hospitalId + ">, service id:<" + referralRequest.getService().getId() + "> and service:<" + referralRequest.getService().getDescription() + ">");
		List<HospitalServiceEntity> hospitalSlots = hospitalDAO.fetchHospitalAppointmentSlots(hospitalId, referralRequest.getService().getId());
		for(HospitalServiceEntity hospitalSlot : hospitalSlots) {
			hospitalSlotDTOs.add(mapperFacade.map(hospitalSlot, HospitalServiceDTO.class));
		}
		return hospitalSlotDTOs;
	}
}