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
package uk.gov.nhs.digital.ers.service.domain;


public class AppointmentCancelReasonLookupDTO {
	private Integer id;
	private String code;
	private String description;

	public AppointmentCancelReasonLookupDTO() {
	}

	public AppointmentCancelReasonLookupDTO(Integer id, String code, String description) {
		this();
		this.id = id;
		this.code = code;
		this.description = description;
	}

	public AppointmentCancelReasonLookupDTO(String code, String description) {
		this(null, code, description);
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
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
		AppointmentCancelReasonLookupDTO other = (AppointmentCancelReasonLookupDTO) obj;
		if(code == null) {
			if(other.code != null)
				return false;
		} else if(!code.equals(other.code))
			return false;
		return true;
	}
}