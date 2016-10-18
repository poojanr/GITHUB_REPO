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

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.dev.ops.common.audit.AuditColumns;
import com.dev.ops.common.audit.AuditColumnsListener;

//@formatter:off
@Entity
@Table(name = "appointment_status_lookup")
@EntityListeners(AuditColumnsListener.class)
@NamedQueries({
	@NamedQuery(name = "AppointmentStatusLookup.fetchAll", query = "select appointmentStatusLookup from AppointmentStatusLookup appointmentStatusLookup"),
	@NamedQuery(name = "AppointmentStatusLookup.fetchInactive", query = "select appointmentStatusLookup from AppointmentStatusLookup appointmentStatusLookup where status='INACTIVE'")
})
//@formatter:on
public class AppointmentStatusLookup {

	@Id
	@Column(name = "id")
	private Integer id;

	@Column(name = "status")
	private String status;

	@Column(name = "description")
	private String description;

	@OneToMany(mappedBy = "appointmentStatus", cascade = {CascadeType.ALL})
	private List<Appointment> appointments;

	private AuditColumns auditColumns;

	public AppointmentStatusLookup() {
		this.appointments = new ArrayList<Appointment>();
		this.auditColumns = new AuditColumns();
	}

	public AppointmentStatusLookup(final String status, final String description) {
		this.status = status;
		this.description = description;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(final Integer id) {
		this.id = id;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(final String status) {
		this.status = status;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(final String description) {
		this.description = description;
	}

	public List<Appointment> getAppointments() {
		return this.appointments;
	}

	public void setAppointments(final List<Appointment> appointments) {
		this.appointments = appointments;
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
		final AppointmentStatusLookup other = (AppointmentStatusLookup) obj;
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