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
package uk.gov.nhs.digital.ers.service.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import com.dev.ops.common.audit.AuditColumns;
import com.dev.ops.common.audit.AuditColumnsListener;

//@formatter:off
@Entity
@Table(name = "appointment_cancel_reason_lookup")
@EntityListeners(AuditColumnsListener.class)
@NamedQueries({
	@NamedQuery(name = "AppointmentCancelReasonLookup.fetchAll", query = "select appointmentCancelReasonLookup from AppointmentCancelReasonLookup appointmentCancelReasonLookup where category ='PATIENT' and STATUS='VALID'"),
	@NamedQuery(name = "AppointmentCancelReasonLookup.fetchCancelReason", query = "select appointmentCancelReasonLookup from AppointmentCancelReasonLookup appointmentCancelReasonLookup where category ='PATIENT' and STATUS='VALID'"),
	@NamedQuery(name = "AppointmentCancelReasonLookup.fetchByReason", query = "select appointmentCancelReasonLookup from AppointmentCancelReasonLookup appointmentCancelReasonLookup where description=:cancelReason and STATUS='VALID'")
})
//@formatter:on
public class AppointmentCancelReasonLookup {

	@Id
	@Column(name = "id")
	private Integer id;

	@Column(name = "code")
	private String code;

	@Column(name = "description")
	private String description;

	@Column(name = "status")
	private String status;

	private AuditColumns auditColumns;

	/*@OneToMany(mappedBy = "appointmentCancel", cascade = {CascadeType.ALL})
	private List<Appointment> appointments;*/

	public AppointmentCancelReasonLookup() {
		//this.appointments = new ArrayList<Appointment>();
		this.auditColumns = new AuditColumns();
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(final Integer id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(final String description) {
		this.description = description;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(final String status) {
		this.status = status;
	}

	public AuditColumns getAuditColumns() {
		return this.auditColumns;
	}

	public void setAuditColumns(final AuditColumns auditColumns) {
		this.auditColumns = auditColumns;
	}

	/*public List<Appointment> getAppointments() {
		return this.appointments;
	}

	public void setAppointments(final List<Appointment> appointments) {
		this.appointments = appointments;
	}*/

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
		final AppointmentCancelReasonLookup other = (AppointmentCancelReasonLookup) obj;
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