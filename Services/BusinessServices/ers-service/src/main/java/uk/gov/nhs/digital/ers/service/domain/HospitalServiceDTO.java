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
package uk.gov.nhs.digital.ers.service.domain;

import java.sql.Timestamp;

public class HospitalServiceDTO {

	private Long id;
	private Timestamp slotStartTime;
	private Timestamp slotEndTime;
	private HospitalDTO hospital;
	private ServiceDTO service;

	public HospitalServiceDTO() {
	}

	public HospitalServiceDTO(final long id, final Timestamp slotStartTime, final Timestamp slotEndTime) {
		this.id = id;
		this.slotEndTime = slotEndTime;
		this.slotStartTime = slotStartTime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Timestamp getSlotStartTime() {
		return slotStartTime;
	}

	public void setSlotStartTime(Timestamp slotStartTime) {
		this.slotStartTime = slotStartTime;
	}

	public Timestamp getSlotEndTime() {
		return slotEndTime;
	}

	public void setSlotEndTime(Timestamp slotEndTime) {
		this.slotEndTime = slotEndTime;
	}

	public HospitalDTO getHospital() {
		return hospital;
	}

	public void setHospital(HospitalDTO hospital) {
		this.hospital = hospital;
	}

	public ServiceDTO getService() {
		return service;
	}

	public void setService(ServiceDTO service) {
		this.service = service;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((hospital == null) ? 0 : hospital.hashCode());
		result = prime * result + ((service == null) ? 0 : service.hashCode());
		result = prime * result + ((slotEndTime == null) ? 0 : slotEndTime.hashCode());
		result = prime * result + ((slotStartTime == null) ? 0 : slotStartTime.hashCode());
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
		HospitalServiceDTO other = (HospitalServiceDTO) obj;
		if(hospital == null) {
			if(other.hospital != null)
				return false;
		} else if(!hospital.equals(other.hospital))
			return false;
		if(service == null) {
			if(other.service != null)
				return false;
		} else if(!service.equals(other.service))
			return false;
		if(slotEndTime == null) {
			if(other.slotEndTime != null)
				return false;
		} else if(!slotEndTime.equals(other.slotEndTime))
			return false;
		if(slotStartTime == null) {
			if(other.slotStartTime != null)
				return false;
		} else if(!slotStartTime.equals(other.slotStartTime))
			return false;
		return true;
	}
}