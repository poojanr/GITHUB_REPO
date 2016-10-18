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
package uk.gov.nhs.digital.ers.service.services;

import java.util.ArrayList;
import java.util.List;

import ma.glasnost.orika.MapperFacade;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import uk.gov.nhs.digital.ers.service.dao.impl.AppointmentCancelLookupDAO;
import uk.gov.nhs.digital.ers.service.dao.impl.AppointmentDAO;
import uk.gov.nhs.digital.ers.service.dao.impl.AppointmentStatusLookupDAO;
import uk.gov.nhs.digital.ers.service.dao.impl.ReferralDAO;
import uk.gov.nhs.digital.ers.service.dao.impl.ReferralStatusLookupDAO;
import uk.gov.nhs.digital.ers.service.domain.AppointmentCancelReasonLookupDTO;
import uk.gov.nhs.digital.ers.service.domain.AppointmentDTO;
import uk.gov.nhs.digital.ers.service.entities.Appointment;
import uk.gov.nhs.digital.ers.service.entities.AppointmentCancelReasonLookup;
import uk.gov.nhs.digital.ers.service.entities.AppointmentStatusLookup;
import uk.gov.nhs.digital.ers.service.entities.ReferralRequest;
import uk.gov.nhs.digital.ers.service.entities.ReferralStatusLookup;

import com.dev.ops.exceptions.impl.DefaultWrappedException;

@Component
public class AppointmentService {

	@Autowired
	private MapperFacade mapperFacade;

	@Autowired
	private AppointmentCancelLookupDAO cancelReasonDAO;

	@Autowired
	private ReferralDAO referralDAO;

	@Autowired
	private ReferralStatusLookupDAO refferalStatusDAO;

	@Autowired
	private AppointmentStatusLookupDAO appointmentStatusDAO;

	@Autowired
	private AppointmentDAO appointmentDAO;

	private static final Logger LOGGER = LogManager.getLogger(AppointmentService.class);

	@Transactional(rollbackFor = {Exception.class})
	public List<AppointmentCancelReasonLookupDTO> getAppointmentCancelReason() {
		final List<AppointmentCancelReasonLookupDTO> appointmentCancelReasonDTOs = new ArrayList<AppointmentCancelReasonLookupDTO>();
		LOGGER.debug("Fetching appointment cancel reasons");

		final List<AppointmentCancelReasonLookup> appointmentCancelReasons = this.cancelReasonDAO.fetchCancelReasons();

		for(final AppointmentCancelReasonLookup appointmentCancelLookup : appointmentCancelReasons) {
			appointmentCancelReasonDTOs.add(this.mapperFacade.map(appointmentCancelLookup, AppointmentCancelReasonLookupDTO.class));
		}

		return appointmentCancelReasonDTOs;
	}

	@Transactional(rollbackFor = {Exception.class})
	public void cancelAppointment(final AppointmentDTO appointmentDTO) throws DefaultWrappedException {

		final AppointmentCancelReasonLookup appointmentCancelReason = this.cancelReasonDAO.fetchByReasons(appointmentDTO.getCancelReason());

		final AppointmentStatusLookup appointmentStatusLookup = this.appointmentStatusDAO.fetchInactiveStatus();

		final ReferralStatusLookup referralStatus = this.refferalStatusDAO.fetchCancelledStatus();

		final ReferralRequest referralRequest = this.referralDAO.fetchReferralByNumber(appointmentDTO.getReferralNumber());

		for(final Appointment appointment : referralRequest.getAppointments()) {
			if(appointment.getAppointmentStatus().getStatus().equals("ACTIVE")) {

				appointment.setCancelReason(appointmentCancelReason.getId());
				appointment.setAppointmentStatus(appointmentStatusLookup);
				this.appointmentDAO.update(appointment);

				referralRequest.setReferralStatus(referralStatus);
				this.referralDAO.update(referralRequest);
			}
		}

	}

	@Transactional(rollbackFor = {Exception.class})
	public AppointmentDTO getAppointmentByReferral(final String referralNumber) throws DefaultWrappedException {
		AppointmentDTO appointmentDTO = null;
		LOGGER.debug("Verifying Appointment details for referralNumber:<" + referralNumber + ">");
		final ReferralRequest referralRequest = this.referralDAO.fetchReferralByNumber(referralNumber);

		for(final Appointment appointment : referralRequest.getAppointments()) {
			if(appointment.getAppointmentStatus().getStatus().equals("ACTIVE")) {
				appointmentDTO = this.mapperFacade.map(appointment, AppointmentDTO.class);
			}
		}

		if(appointmentDTO == null) {
			throw new DefaultWrappedException("NO_APPOINTMENT_FOUND_EXCEPTION", null, new Object[] {referralNumber});
		}

		return appointmentDTO;
	}
}