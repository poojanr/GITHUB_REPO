package uk.gov.nhs.digital.ers.service.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import uk.gov.nhs.digital.ers.service.entities.Hospital;
import uk.gov.nhs.digital.ers.service.entities.HospitalServiceEntity;

import com.dev.ops.common.dao.generic.GenericDAOImpl;
import com.dev.ops.common.utils.TimestampUtil;

@SuppressWarnings("unchecked")
@Component
public class HospitalDAOImpl extends GenericDAOImpl<Hospital> implements HospitalDAO {

	@Value("${ers.service.display.maximum.hospitals}")
	private int maximumHospitals;

	@Override
	public List<Hospital> fetchHospitalsByService(Long serviceId) {
		final Query query = this.getEntityManager().createNamedQuery("HospitalServiceEntity.fetchHospitalsByService", Hospital.class);
		query.setParameter("serviceId", serviceId);
		query.setParameter("currentTime", TimestampUtil.getCurentTimestamp());
		query.setMaxResults(maximumHospitals);
		List<Hospital> hospitals = query.getResultList();
		return hospitals;
	}

	@Override
	public List<HospitalServiceEntity> fetchHospitalAppointmentSlots(Long hospitalId, Long serviceId) {
		final Query query = this.getEntityManager().createNamedQuery("HospitalServiceEntity.fetchHospitalAppointmentSlots", HospitalServiceEntity.class);
		query.setParameter("hospitalId", hospitalId);
		query.setParameter("serviceId", serviceId);
		query.setParameter("currentTime", TimestampUtil.getCurentTimestamp());
		List<HospitalServiceEntity> hospitalSlots = query.getResultList();
		return hospitalSlots;
	}
}