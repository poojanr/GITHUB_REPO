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
@Table(name = "hospital_status_lookup")
@EntityListeners(AuditColumnsListener.class)
@NamedQueries({
	@NamedQuery(name = "HospitalStatusLookup.fetchAll", query = "select hospitalStatusLookup from HospitalStatusLookup hospitalStatusLookup")
})
//@formatter:on
public class HospitalStatusLookup {

	@Id
	@Column(name = "id")
	private Integer id;

	@Column(name = "status")
	private String status;

	@Column(name = "description")
	private String description;

	@OneToMany(mappedBy = "hospitalStatus", cascade = {CascadeType.ALL})
	private List<Hospital> hospitals;

	private AuditColumns auditColumns;

	public HospitalStatusLookup() {
		this.hospitals = new ArrayList<Hospital>();
		this.auditColumns = new AuditColumns();
	}

	public HospitalStatusLookup(Integer id, String status, String description) {
		this();
		this.id = id;
		this.status = status;
		this.description = description;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Hospital> getHospitals() {
		return hospitals;
	}

	public void setHospitals(List<Hospital> hospitals) {
		this.hospitals = hospitals;
	}

	public AuditColumns getAuditColumns() {
		return auditColumns;
	}

	public void setAuditColumns(AuditColumns auditColumns) {
		this.auditColumns = auditColumns;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if(this == obj)
			return true;
		if(obj == null)
			return false;
		if(getClass() != obj.getClass())
			return false;
		HospitalStatusLookup other = (HospitalStatusLookup) obj;
		if(id == null) {
			if(other.id != null)
				return false;
		} else if(!id.equals(other.id))
			return false;
		return true;
	}
}