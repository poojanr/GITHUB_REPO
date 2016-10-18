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
@Table(name = "hospital_service_lookup")
@EntityListeners(AuditColumnsListener.class)
@NamedQueries({
	@NamedQuery(name = "HospitalServiceLookup.fetchAll", query = "select hospitalServiceLookup from HospitalServiceLookup hospitalServiceLookup")
})
//@formatter:on
public class HospitalServiceLookup {

	@Id
	@Column(name = "id")
	private Integer id;

	@Column(name = "status")
	private String status;

	@Column(name = "description")
	private String description;

	@OneToMany(mappedBy = "hospitalService", cascade = {CascadeType.ALL})
	private List<HospitalServiceEntity> hospitalServices;

	private AuditColumns auditColumns;

	public HospitalServiceLookup() {
		this.hospitalServices = new ArrayList<HospitalServiceEntity>();
		this.auditColumns = new AuditColumns();
	}

	public HospitalServiceLookup(final String status, final String description) {
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

	public List<HospitalServiceEntity> getHospitalServices() {
		return this.hospitalServices;
	}

	public void setHospitalServices(final List<HospitalServiceEntity> hospitalServices) {
		this.hospitalServices = hospitalServices;
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
		final HospitalServiceLookup other = (HospitalServiceLookup) obj;
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