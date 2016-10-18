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

import ma.glasnost.orika.MapperFacade;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import uk.gov.nhs.digital.ers.service.dao.impl.PatientDAO;
import uk.gov.nhs.digital.ers.service.domain.PatientDTO;
import uk.gov.nhs.digital.ers.service.entities.Patient;

import com.dev.ops.exceptions.impl.DefaultWrappedException;

@Component
public class PatientService {

	@Autowired
	private MapperFacade mapperFacade;

	@Autowired
	private PatientDAO patientDAO;

	private static final Logger LOGGER = LogManager.getLogger(PatientService.class);

	@Transactional(rollbackFor = {Exception.class})
	public PatientDTO getPatientDetails(final String nhsNumber) throws DefaultWrappedException {
		LOGGER.debug("Get patient details for NHS Number:<" + nhsNumber + ">");
		Patient patient = patientDAO.fetchPatientDetailsByNHSNumber(nhsNumber);
		return mapperFacade.map(patient, PatientDTO.class);
	}
}