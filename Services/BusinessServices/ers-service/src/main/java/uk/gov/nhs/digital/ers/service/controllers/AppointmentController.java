/* Copyright (C) 2016 Rajendra Paliwal @ Mastek <Rajendra.Paliwal@mastek.com>
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License. */
package uk.gov.nhs.digital.ers.service.controllers;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import uk.gov.nhs.digital.ers.service.domain.AppointmentCancelReasonLookupDTO;
import uk.gov.nhs.digital.ers.service.domain.AppointmentDTO;
import uk.gov.nhs.digital.ers.service.services.AppointmentService;
import uk.gov.nhs.digital.ers.service.url.mappings.ServiceURLMappings;

import com.dev.ops.common.domain.ContextInfo;
import com.dev.ops.common.thread.local.ContextThreadLocal;
import com.dev.ops.exceptions.impl.DefaultWrappedException;

@Controller
@RequestMapping(ServiceURLMappings.AppointmentController.CONTROLLER_MAPPING)
public class AppointmentController {

	@Autowired
	private AppointmentService appointmentService;

	private static final Logger LOGGER = LogManager.getLogger(AppointmentController.class);

	@RequestMapping(value = ServiceURLMappings.AppointmentController.GET_APPOINTMENT_BY_REFERRAL + "{referralNumber}", method = RequestMethod.GET)
	@ResponseBody
	public AppointmentDTO getAppointment(@PathVariable final String referralNumber) throws DefaultWrappedException {
		ContextThreadLocal.set(ContextInfo.toContextInfo(""));
		LOGGER.debug("Getting appointment for referral number:" + referralNumber);
		return this.appointmentService.getAppointmentByReferral(referralNumber);
	}

	@RequestMapping(value = ServiceURLMappings.AppointmentController.GET_CANCEL_REASONS, method = RequestMethod.GET)
	@ResponseBody
	public List<AppointmentCancelReasonLookupDTO> getCancelReasons() throws DefaultWrappedException {
		ContextThreadLocal.set(ContextInfo.toContextInfo(""));
		LOGGER.debug("fetching Cancel reasons ");
		return this.appointmentService.getAppointmentCancelReason();
	}

	@RequestMapping(value = ServiceURLMappings.AppointmentController.CANCEL_APPOINTMENT, method = RequestMethod.POST)
	@ResponseBody
	public void cancelAppointment(@RequestBody final AppointmentDTO appointmentDTO) throws DefaultWrappedException {
		ContextThreadLocal.set(ContextInfo.toContextInfo(""));
		LOGGER.debug("Cancel booking for the reference number : " + appointmentDTO.getReferralNumber() + " And cancelReason : " + appointmentDTO.getCancelReason());
		this.appointmentService.cancelAppointment(appointmentDTO);
	}

}