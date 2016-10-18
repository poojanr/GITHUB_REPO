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

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.dev.ops.common.audit.AuditColumns;
import com.dev.ops.common.audit.AuditColumnsListener;

//@formatter:off
@Entity
@Table(name = "hospital")
@EntityListeners(AuditColumnsListener.class)
@NamedQueries({
})
//@formatter:on
public class Hospital {

	@Id
	@Column(name = "id")
	private Long id;

	@Column(name = "organisation_code")
	private String organisationCode;

	@Column(name = "name")
	private String name;

	@Column(name = "postalCode")
	private String postalCode;

	@Column(name = "contact")
	private String contact;

	@Column(name = "email")
	private String email;

	@Column(name = "website")
	private String website;

	@Column(name = "fax")
	private String fax;

	@Column(name = "address")
	private String address;

	@Column(name = "latitude")
	private Double latitude;

	@Column(name = "longitude")
	private Double longitude;

	@ManyToOne(optional = false)
	@JoinColumn(name = "hospital_status_id")
	private HospitalStatusLookup hospitalStatus;

	@OneToMany(mappedBy = "hospital", cascade = {CascadeType.ALL})
	private List<HospitalServiceEntity> hospitalServices;

	private AuditColumns auditColumns;

	public Hospital() {
		this.auditColumns = new AuditColumns();
	}

	public Hospital(Long id, String organisationCode, String name, String postalCode, String contact, String email, String website, String fax, String address, Double latitude, Double longitude) {
		this();
		this.id = id;
		this.organisationCode = organisationCode;
		this.name = name;
		this.postalCode = postalCode;
		this.contact = contact;
		this.email = email;
		this.website = website;
		this.fax = fax;
		this.address = address;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getOrganisationCode() {
		return organisationCode;
	}

	public void setOrganisationCode(String organisationCode) {
		this.organisationCode = organisationCode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Double getLatitude() {
		return latitude;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}

	public Double getLongitude() {
		return longitude;
	}

	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}

	public HospitalStatusLookup getHospitalStatus() {
		return hospitalStatus;
	}

	public void setHospitalStatus(HospitalStatusLookup hospitalStatus) {
		this.hospitalStatus = hospitalStatus;
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
		result = prime * result + ((organisationCode == null) ? 0 : organisationCode.hashCode());
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
		Hospital other = (Hospital) obj;
		if(organisationCode == null) {
			if(other.organisationCode != null)
				return false;
		} else if(!organisationCode.equals(other.organisationCode))
			return false;
		return true;
	}
}