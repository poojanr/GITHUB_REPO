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
package uk.gov.nhs.digital.ers.service.controllers;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import uk.gov.nhs.digital.ers.service.domain.HospitalDTO;
import uk.gov.nhs.digital.ers.service.domain.HospitalServiceDTO;
import uk.gov.nhs.digital.ers.service.services.HospitalService;
import uk.gov.nhs.digital.ers.service.url.mappings.ServiceURLMappings;

import com.dev.ops.exceptions.impl.DefaultWrappedException;

@Controller
@RequestMapping(ServiceURLMappings.HospitalServiceController.CONTROLLER_MAPPING)
public class HospitalServiceController {

	@Autowired
	private HospitalService hospitalService;

	private static final Logger LOGGER = LogManager.getLogger(HospitalServiceController.class);

	@RequestMapping(value = ServiceURLMappings.HospitalServiceController.GET_HOSPITAL_BY_REFERRAL + "{referralNumber}", method = RequestMethod.GET)
	@ResponseBody
	//public List<HospitalDTO> getHospitalsByReferral(@PathVariable final String referralNumber, @RequestHeader(CommonConstants.CONTEXT_INFORMATION_REQUEST_PARAMETER) final String context) throws DefaultWrappedException {
	public List<HospitalDTO> getHospitalsByReferral(@PathVariable final String referralNumber) throws DefaultWrappedException {
		LOGGER.debug("Get Hospital lists for referral number:" + referralNumber);
		return hospitalService.getHospitals(referralNumber);
	}

	@RequestMapping(value = ServiceURLMappings.HospitalServiceController.GET_HOSPITAL_APPOINTMENT_SLOTS + "{referralNumber}/{hospitalId}", method = RequestMethod.GET)
	@ResponseBody
	//public List<HospitalServiceDTO> getHospitalAppointmentSlots(@PathVariable final String referralNumber, @PathVariable final Long hospitalId, @RequestHeader(CommonConstants.CONTEXT_INFORMATION_REQUEST_PARAMETER) final String context) throws DefaultWrappedException {
	public List<HospitalServiceDTO> getHospitalAppointmentSlots(@PathVariable final String referralNumber, @PathVariable final Long hospitalId) throws DefaultWrappedException {
		LOGGER.debug("Get appointment slots for referral number:<" + referralNumber + "> and hospital id:<" + hospitalId + ">");
		return hospitalService.getHospitalAppointmentSlots(referralNumber, hospitalId);
	}
}