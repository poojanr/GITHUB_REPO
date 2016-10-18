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
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.dev.ops.common.audit.AuditColumns;
import com.dev.ops.common.audit.AuditColumnsListener;

//@formatter:off
@Entity
@Table(name = "service")
@EntityListeners(AuditColumnsListener.class)
@NamedQueries({
	//@NamedQuery(name = "ReferralRequest.fetchReferralByNumber", query = "SELECT referralRequest FROM ReferralRequest referralRequest WHERE referralNumber=:referralNumber")
})
//@formatter:on
public class Service {

	@Id
	@Column(name = "id")
	private Long id;

	@Column(name = "code")
	private String code;

	@Column(name = "description")
	private String description;

	@OneToMany(mappedBy = "service", cascade = {CascadeType.ALL})
	private List<ReferralRequest> referralRequests;

	@OneToMany(mappedBy = "service", cascade = {CascadeType.ALL})
	private List<HospitalServiceEntity> hospitalServices;

	private AuditColumns auditColumns;

	public Service() {
		this.referralRequests = new ArrayList<ReferralRequest>();
		this.auditColumns = new AuditColumns();
	}

	public Service(Long id, String code, String description) {
		this();
		this.id = id;
		this.code = code;
		this.description = description;
	}

	public Service(String code, String description) {
		this(null, code, description);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setReferralRequests(List<ReferralRequest> referralRequests) {
		this.referralRequests = referralRequests;
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
		result = prime * result + ((code == null) ? 0 : code.hashCode());
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
		Service other = (Service) obj;
		if(code == null) {
			if(other.code != null)
				return false;
		} else if(!code.equals(other.code))
			return false;
		return true;
	}
}