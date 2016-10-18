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
package uk.gov.nhs.digital.ers.service.entities;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import com.dev.ops.common.audit.AuditColumns;
import com.dev.ops.common.audit.AuditColumnsListener;

//@formatter:off
@Entity
@Table(name = "hospital_service")
@EntityListeners(AuditColumnsListener.class)
@NamedQueries({
	@NamedQuery(name = "HospitalServiceEntity.fetchHospitalsByService", query = "SELECT distinct hospitalService.hospital FROM HospitalServiceEntity hospitalService WHERE hospitalService.service.id = :serviceId and hospitalService.slotStartTime > :currentTime"),
	@NamedQuery(name = "HospitalServiceEntity.fetchHospitalAppointmentSlots", query = "SELECT distinct hospitalService FROM HospitalServiceEntity hospitalService WHERE hospitalService.hospital.id = :hospitalId and hospitalService.service.id = :serviceId and hospitalService.slotStartTime > :currentTime")
})
//@formatter:on
public class HospitalServiceEntity {

	@Id
	@Column(name = "id")
	private Long id;

	@Column(name = "slot_start_time")
	private Timestamp slotStartTime;

	@Column(name = "slot_end_time")
	private Timestamp slotEndTime;

	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "hospital_id")
	private Hospital hospital;

	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "service_id")
	private Service service;

	@ManyToOne(optional = false)
	@JoinColumn(name = "slot_status_id")
	private HospitalServiceLookup hospitalService;

	private AuditColumns auditColumns;

	public HospitalServiceEntity() {
		this.auditColumns = new AuditColumns();
	}

	public HospitalServiceEntity(final long id, final Timestamp slotStartTime, final Timestamp slotEndTime) {

		this.id = id;
		this.slotEndTime = slotEndTime;
		this.slotStartTime = slotStartTime;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(final Long id) {
		this.id = id;
	}

	public Timestamp getSlotStartTime() {
		return this.slotStartTime;
	}

	public void setSlotStartTime(final Timestamp slotStartTime) {
		this.slotStartTime = slotStartTime;
	}

	public Timestamp getSlotEndTime() {
		return this.slotEndTime;
	}

	public void setSlotEndTime(final Timestamp slotEndTime) {
		this.slotEndTime = slotEndTime;
	}

	public Hospital getHospital() {
		return this.hospital;
	}

	public void setHospital(final Hospital hospital) {
		this.hospital = hospital;
	}

	public Service getService() {
		return this.service;
	}

	public void setService(final Service service) {
		this.service = service;
	}

	public HospitalServiceLookup getHospitalService() {
		return this.hospitalService;
	}

	public void setHospitalService(final HospitalServiceLookup hospitalService) {
		this.hospitalService = hospitalService;
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
		result = prime * result + (this.hospital == null ? 0 : this.hospital.hashCode());
		result = prime * result + (this.service == null ? 0 : this.service.hashCode());
		result = prime * result + (this.slotEndTime == null ? 0 : this.slotEndTime.hashCode());
		result = prime * result + (this.slotStartTime == null ? 0 : this.slotStartTime.hashCode());
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
		final HospitalServiceEntity other = (HospitalServiceEntity) obj;
		if(this.hospital == null) {
			if(other.hospital != null) {
				return false;
			}
		} else if(!this.hospital.equals(other.hospital)) {
			return false;
		}
		if(this.service == null) {
			if(other.service != null) {
				return false;
			}
		} else if(!this.service.equals(other.service)) {
			return false;
		}
		if(this.slotEndTime == null) {
			if(other.slotEndTime != null) {
				return false;
			}
		} else if(!this.slotEndTime.equals(other.slotEndTime)) {
			return false;
		}
		if(this.slotStartTime == null) {
			if(other.slotStartTime != null) {
				return false;
			}
		} else if(!this.slotStartTime.equals(other.slotStartTime)) {
			return false;
		}
		return true;
	}

}