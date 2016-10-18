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
package uk.gov.nhs.digital.ers.service.url.mappings;

public interface ServiceURLMappings {

	interface ReferralServiceController {
		String CONTROLLER_MAPPING = "/referral";
		String VERIFY_REFERRAL = "/verify/";
		String GET_REFERRAL_DETAILS = "/";

	}

	interface HospitalServiceController {
		String CONTROLLER_MAPPING = "/hospital";
		String GET_HOSPITAL_BY_REFERRAL = "/referral/";
		String GET_HOSPITAL_APPOINTMENT_SLOTS = "/appointment-slots/";
	}

	interface PatientServiceController {
		String CONTROLLER_MAPPING = "/patient";
		String GET_PATIENT_DETAILS = "/";
	}

	interface AppointmentController {
		String CONTROLLER_MAPPING = "/appointment";
		String GET_APPOINTMENT_BY_REFERRAL = "/referral/";
		String GET_CANCEL_REASONS = "/cancel-reasons";
		String CANCEL_APPOINTMENT = "/cancel";
		String REASON = "/reason/";
	}
}
