package uk.gov.nhs.digital.ers.service.dao.impl;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import uk.gov.nhs.digital.ers.service.entities.Patient;

import com.dev.ops.common.dao.generic.GenericDAOImpl;
import com.dev.ops.exceptions.impl.DefaultWrappedException;

@Component
public class PatientDAOImpl extends GenericDAOImpl<Patient> implements PatientDAO {

	@Override
	public Patient fetchPatientDetailsByNHSNumber(String nhsNumber) throws DefaultWrappedException {
		final Query query = this.getEntityManager().createNamedQuery("Patient.fetchByNHSNumber", Patient.class);
		query.setParameter("nhsNumber", nhsNumber);

		Patient patient = null;
		try {
			patient = (Patient) query.getSingleResult();
		} catch(final NoResultException e) {
			throw new DefaultWrappedException("NO_PATIENT_FOUND_EXCEPTION", e, new Object[] {nhsNumber});
		}
		return patient;
	}
}