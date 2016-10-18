/* Copyright (C) 2016 Rajendra Paliwal @ Mastek <Rajendra.Paliwal@mastek.com>
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governin g permissions and
 * limitations under the License. */
package uk.gov.nhs.digital.ers.service.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.Table;

import com.dev.ops.common.audit.AuditColumns;
import com.dev.ops.common.audit.AuditColumnsListener;

//@formatter:off
@Entity
@Table(name = "appointment")
@EntityListeners(AuditColumnsListener.class)
@NamedQueries({
})
//@formatter:on
public class Appointment {

	@Id
	@Column(name = "id")
	private Long id;

	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "hospital_service_id")
	private HospitalServiceEntity hospitalService;

	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "referral_id")
	private ReferralRequest referralRequest;

	@ManyToOne(optional = false)
	@JoinColumn(name = "appointment_status_id")
	private AppointmentStatusLookup appointmentStatus;

	//@ManyToOne(optional = false)
	//@JoinColumn(name = "cancel_reason")
	//private AppointmentCancelLookup appointmentCancel;

	@Column(name = "cancel_reason")
	private Integer cancelReason;

	private AuditColumns auditColumns;

	public Appointment(final Long id, final Integer cancelReason) {
		this();
		this.id = id;
		this.cancelReason = cancelReason;
	}

	public Appointment() {
		this.auditColumns = new AuditColumns();
	}

	public Long getId() {
		return this.id;
	}

	public void setId(final Long id) {
		this.id = id;
	}

	public HospitalServiceEntity getHospitalService() {
		return this.hospitalService;
	}

	public void setHospitalService(final HospitalServiceEntity hospitalService) {
		this.hospitalService = hospitalService;
	}

	public ReferralRequest getReferralRequest() {
		return this.referralRequest;
	}

	public void setReferralRequest(final ReferralRequest referralRequest) {
		this.referralRequest = referralRequest;
	}

	public AppointmentStatusLookup getAppointmentStatus() {
		return this.appointmentStatus;
	}

	public void setAppointmentStatus(final AppointmentStatusLookup appointmentStatus) {
		this.appointmentStatus = appointmentStatus;
	}

	/*public AppointmentCancelLookup getAppointmentCancel() {
		return this.appointmentCancel;
	}

	public void setAppointmentCancel(final AppointmentCancelLookup appointmentCancel) {
		this.appointmentCancel = appointmentCancel;
	}
	*/

	public Integer getCancelReason() {
		return this.cancelReason;
	}

	public void setCancelReason(final Integer cancelReason) {
		this.cancelReason = cancelReason;
	}

	public AuditColumns getAuditColumns() {
		return this.auditColumns;
	}

	public void setAuditColumns(final AuditColumns auditColumns) {
		this.auditColumns = auditColumns;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (this.id == null ? 0 : this.id.hashCode());
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
		final Appointment other = (Appointment) obj;
		if(this.id == null) {
			if(other.id != null) {
				return false;
			}
		} else if(!this.id.equals(other.id)) {
			return false;
		}
		return true;
	}
}