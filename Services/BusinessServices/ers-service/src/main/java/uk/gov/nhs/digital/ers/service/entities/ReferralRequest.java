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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.dev.ops.common.audit.AuditColumns;
import com.dev.ops.common.audit.AuditColumnsListener;

//@formatter:off
@Entity
@Table(name = "referral_request")
@EntityListeners(AuditColumnsListener.class)
@NamedQueries({
	@NamedQuery(name = "ReferralRequest.fetchReferralByNumber", query = "SELECT referralRequest FROM ReferralRequest referralRequest WHERE referralNumber=:referralNumber")
})
//@formatter:on
public class ReferralRequest {

	@Id
	@Column(name = "id")
	private Long id;

	@Column(name = "referral_number")
	private String referralNumber;

	@Column(name = "password")
	private String password;

	@Column(name = "additional_requirements")
	private String additionalRequirements;

	@Column(name = "referred_by")
	private String referredBy;

	@Column(name = "referred_date")
	private Timestamp referredDate;

	@ManyToOne(optional = false)
	@JoinColumn(name = "referral_status_id")
	private ReferralStatusLookup referralStatus;

	@ManyToOne(optional = false)
	@JoinColumn(name = "patient_id")
	private Patient patient;

	@ManyToOne(optional = false)
	@JoinColumn(name = "service_id")
	private Service service;

	@OneToMany(mappedBy = "referralRequest", cascade = {CascadeType.ALL})
	private List<Appointment> appointments;


	private AuditColumns auditColumns;

	public ReferralRequest() {
		this.appointments = new ArrayList<Appointment>();
		this.auditColumns = new AuditColumns();
	}

	public ReferralRequest(Long id, String referralNumber, String password, String referredBy, Timestamp referredDate) {
		this();
		this.id = id;
		this.referralNumber = referralNumber;
		this.password = password;
		this.referredBy = referredBy;
		this.referredDate = referredDate;
	}

	public ReferralRequest(String referralNumber, String password, String referredBy, Timestamp referredDate) {
		this(null, referralNumber, password, referredBy, referredDate);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getReferralNumber() {
		return referralNumber;
	}

	public void setReferralNumber(String referralNumber) {
		this.referralNumber = referralNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAdditionalRequirements() {
		return additionalRequirements;
	}

	public void setAdditionalRequirements(String additionalRequirements) {
		this.additionalRequirements = additionalRequirements;
	}

	public String getReferredBy() {
		return referredBy;
	}

	public void setReferredBy(String referredBy) {
		this.referredBy = referredBy;
	}

	public Timestamp getReferredDate() {
		return referredDate;
	}

	public void setReferredDate(Timestamp referredDate) {
		this.referredDate = referredDate;
	}

	public ReferralStatusLookup getReferralStatus() {
		return referralStatus;
	}

	public void setReferralStatus(ReferralStatusLookup referralStatus) {
		this.referralStatus = referralStatus;
	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	public Service getService() {
		return service;
	}

	public void setService(Service service) {
		this.service = service;
	}

	public List<Appointment> getAppointments() {
		return appointments;
	}

	public void setAppointments(List<Appointment> appointments) {
		this.appointments = appointments;
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
				+ ((referralNumber == null) ? 0 : referralNumber.hashCode());
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
		ReferralRequest other = (ReferralRequest) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (referralNumber == null) {
			if (other.referralNumber != null)
				return false;
		} else if (!referralNumber.equals(other.referralNumber))
			return false;
		return true;
	}
}