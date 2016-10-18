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

import java.sql.Timestamp;
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
@Table(name = "patient")
@EntityListeners(AuditColumnsListener.class)
@NamedQueries({
	@NamedQuery(name = "Patient.fetchByNHSNumber", query = "SELECT patient FROM Patient patient WHERE nhsNumber=:nhsNumber")
})
//@formatter:on
public class Patient {

	@Id
	@Column(name = "id")
	private Long id;

	@Column(name = "nhs_number")
	private String nhsNumber;

	@Column(name = "dob")
	private Timestamp dateOfBirth;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;

	@Column(name = "contact")
	private String contact;

	@Column(name = "postal_code")
	private String postalCode;

	@Column(name = "address")
	private String address;

	@OneToMany(mappedBy = "patient", cascade = {CascadeType.ALL})
	private List<ReferralRequest> referralRequests;

	private AuditColumns auditColumns;

	public Patient() {
		this.referralRequests = new ArrayList<ReferralRequest>();
		this.auditColumns = new AuditColumns();
	}

	public Patient(Long id, String nhsNumber, Timestamp dateOfBirth, String firstName, String lastName, String contact, String postalCode, String address) {
		this();
		this.id = id;
		this.nhsNumber = nhsNumber;
		this.dateOfBirth = dateOfBirth;
		this.firstName = firstName;
		this.lastName = lastName;
		this.contact = contact;
		this.postalCode = postalCode;
		this.address = address;
	}

	public Patient(String nhsNumber, Timestamp dateOfBirth, String firstName, String lastName, String contact, String postalCode, String address) {
		this(null, nhsNumber, dateOfBirth, firstName, lastName, contact, postalCode, address);
	}

	public Patient(String nhsNumber, Timestamp dateOfBirth, String firstName, String lastName) {
		this(nhsNumber, dateOfBirth, firstName, lastName, null, null, null);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNhsNumber() {
		return nhsNumber;
	}

	public void setNhsNumber(String nhsNumber) {
		this.nhsNumber = nhsNumber;
	}

	public Timestamp getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Timestamp dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public List<ReferralRequest> getReferralRequests() {
		return referralRequests;
	}

	public void addReferralRequest(ReferralRequest referralRequest) {
		this.referralRequests.add(referralRequest);
	}

	public void removeReferralRequest(ReferralRequest referralRequest) {
		this.referralRequests.remove(referralRequest);
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
		result = prime * result
				+ ((nhsNumber == null) ? 0 : nhsNumber.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Patient other = (Patient) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (nhsNumber == null) {
			if (other.nhsNumber != null)
				return false;
		} else if (!nhsNumber.equals(other.nhsNumber))
			return false;
		return true;
	}
}