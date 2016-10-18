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
package uk.gov.nhs.digital.ers.service.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.springframework.stereotype.Component;

import uk.gov.nhs.digital.ers.service.entities.AppointmentCancelReasonLookup;

import com.dev.ops.common.dao.generic.GenericDAOImpl;

@Component
public class AppointmentCancelLookupDAOImpl extends GenericDAOImpl<AppointmentCancelReasonLookup> implements AppointmentCancelLookupDAO {

	@SuppressWarnings("unchecked")
	@Override
	public List<AppointmentCancelReasonLookup> fetchCancelReasons() {
		final Query query = this.getEntityManager().createNamedQuery("AppointmentCancelReasonLookup.fetchCancelReason", AppointmentCancelReasonLookup.class);
		final List<AppointmentCancelReasonLookup> appointmentCancelReasonLookups = query.getResultList();
		return appointmentCancelReasonLookups;
	}

	@Override
	public AppointmentCancelReasonLookup fetchByReasons(final String cancelReason) {

		final Query query = this.getEntityManager().createNamedQuery("AppointmentCancelReasonLookup.fetchByReason", AppointmentCancelReasonLookup.class);
		query.setParameter("cancelReason", cancelReason);

		final AppointmentCancelReasonLookup appointmentCancelReasonLookup = (AppointmentCancelReasonLookup) query.getSingleResult();
		return appointmentCancelReasonLookup;
	};

}