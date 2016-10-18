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
package uk.gov.nhs.digital.ers.service.controllers;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import uk.gov.nhs.digital.ers.service.domain.ReferralRequestDTO;
import uk.gov.nhs.digital.ers.service.services.ReferralService;
import uk.gov.nhs.digital.ers.service.url.mappings.ServiceURLMappings;

import com.dev.ops.exceptions.impl.DefaultWrappedException;

@Controller
@RequestMapping(ServiceURLMappings.ReferralServiceController.CONTROLLER_MAPPING)
public class ReferralServiceController {

	@Autowired
	private ReferralService referralService;

	private static final Logger LOGGER = LogManager.getLogger(ReferralServiceController.class);

	@RequestMapping(value = ServiceURLMappings.ReferralServiceController.VERIFY_REFERRAL + "{referralNumber}/{yearOfBirth}/{password}", method = RequestMethod.GET)
	@ResponseBody
	//public ReferralRequestDTO verifyReferral(@PathVariable final String referralNumber, @PathVariable final int yearOfBirth, @PathVariable final String password, @RequestHeader(CommonConstants.CONTEXT_INFORMATION_REQUEST_PARAMETER) final String context) throws DefaultWrappedException {
	public ReferralRequestDTO verifyReferral(@PathVariable final String referralNumber, @PathVariable final int yearOfBirth, @PathVariable final String password) throws DefaultWrappedException {
		LOGGER.debug("Verify Referral details for:" + referralNumber);
		return referralService.verifyReferralDetails(referralNumber, yearOfBirth, password);
	}

	@RequestMapping(value = ServiceURLMappings.ReferralServiceController.GET_REFERRAL_DETAILS + "{referralNumber}", method = RequestMethod.GET)
	@ResponseBody
	//public ReferralRequestDTO verifyReferral(@PathVariable final String referralNumber, @RequestHeader(CommonConstants.CONTEXT_INFORMATION_REQUEST_PARAMETER) final String context) throws DefaultWrappedException {
	public ReferralRequestDTO getReferralDetails(@PathVariable final String referralNumber) throws DefaultWrappedException {
		LOGGER.debug("Get Referral details for:" + referralNumber);
		return referralService.getReferralDetails(referralNumber);
	}
}