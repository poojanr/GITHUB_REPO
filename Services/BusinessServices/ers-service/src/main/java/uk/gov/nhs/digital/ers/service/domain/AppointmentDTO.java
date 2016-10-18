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
package uk.gov.nhs.digital.ers.service.domain;

import java.sql.Timestamp;

public class AppointmentDTO {

	private String referralNumber;
	private Timestamp appointmentTime;
	private String clinic;
	private String location;
	private String referredby;
	private String cancelReason;

	public AppointmentDTO() {
	}

	public AppointmentDTO(final String referralNumber, final String clinic, final String location, final String referredby, final Timestamp appointmentTime, final String cancelReason) {
		this();
		this.referralNumber = referralNumber;
		this.clinic = clinic;
		this.location = location;
		this.referredby = referredby;
		this.appointmentTime = appointmentTime;
		this.cancelReason = cancelReason;

	}

	public String getReferralNumber() {
		return this.referralNumber;
	}

	public void setReferralNumber(final String referralNumber) {
		this.referralNumber = referralNumber;
	}

	public Timestamp getAppointmentTime() {
		return this.appointmentTime;
	}

	public void setAppointmentTime(final Timestamp appointmentTime) {
		this.appointmentTime = appointmentTime;
	}

	public String getClinic() {
		return this.clinic;
	}

	public void setClinic(final String clinic) {
		this.clinic = clinic;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(final String location) {
		this.location = location;
	}

	public String getReferredby() {
		return this.referredby;
	}

	public void setReferredby(final String referredby) {
		this.referredby = referredby;
	}

	public String getCancelReason() {
		return this.cancelReason;
	}

	public void setCancelReason(final String cancelReason) {
		this.cancelReason = cancelReason;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (this.clinic == null ? 0 : this.clinic.hashCode());
		return result;
	}

	@Override
	public boolean equals(final Object obj) {
		if(this == obj) {
			return true;
		}
		if(obj == null) {
			return false;
		}
		if(this.getClass() != obj.getClass()) {
			return false;
		}
		final AppointmentDTO other = (AppointmentDTO) obj;
		if(this.clinic == null) {
			if(other.clinic != null) {
				return false;
			}
		} else if(!this.clinic.equals(other.clinic)) {
			return false;
		}

		return true;
	}
}