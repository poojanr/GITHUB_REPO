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
package uk.gov.nhs.digital.ers.service.domain;

import java.sql.Timestamp;

public class ReferralRequestDTO {

	private Long id;
	private String referralNumber;
	private String nhsNumber;
	private String additionalRequirements;
	private String referredBy;
	private Timestamp referredDate;
	private String referralStatus;

	public ReferralRequestDTO() {
	}

	public ReferralRequestDTO(Long id, String referralNumber, String referredBy, Timestamp referredDate, String nhsNumber, String referralStatus) {
		this();
		this.id = id;
		this.referralNumber = referralNumber;
		this.nhsNumber = nhsNumber;
		this.referredBy = referredBy;
		this.referredDate = referredDate;
		this.referralStatus = referralStatus;
	}

	public ReferralRequestDTO(String referralNumber, String referredBy, Timestamp referredDate, String nhsNumber, String referralStatus) {
		this(null, referralNumber, referredBy, referredDate, nhsNumber, referralStatus);
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

	public String getNhsNumber() {
		return nhsNumber;
	}

	public void setNhsNumber(String nhsNumber) {
		this.nhsNumber = nhsNumber;
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

	public String getReferralStatus() {
		return referralStatus;
	}

	public void setReferralStatus(String referralStatus) {
		this.referralStatus = referralStatus;
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
		ReferralRequestDTO other = (ReferralRequestDTO) obj;
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