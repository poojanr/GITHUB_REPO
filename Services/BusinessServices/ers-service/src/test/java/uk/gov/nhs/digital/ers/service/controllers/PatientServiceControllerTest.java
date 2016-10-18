package uk.gov.nhs.digital.ers.service.controllers;

import static org.mockito.Mockito.times;

import java.text.ParseException;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import ma.glasnost.orika.MapperFacade;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.test.util.ReflectionTestUtils;

import uk.gov.nhs.digital.ers.service.dao.impl.PatientDAO;
import uk.gov.nhs.digital.ers.service.dao.impl.PatientDAOImpl;
import uk.gov.nhs.digital.ers.service.domain.PatientDTO;
import uk.gov.nhs.digital.ers.service.entities.Patient;
import uk.gov.nhs.digital.ers.service.services.PatientService;

import com.dev.ops.common.utils.TimestampUtil;
import com.dev.ops.exceptions.impl.DefaultWrappedException;

@RunWith(MockitoJUnitRunner.class)
public class PatientServiceControllerTest {

	private static final int YEAR_OF_BIRTH = 1987;
	private static final String NHS_NUMBER = "7123123121";

	@InjectMocks
	private final PatientServiceController patientServiceController = new PatientServiceController();

	@Spy
	private PatientService patientService = new PatientService();

	@Spy
	private PatientDAO patientDAO = new PatientDAOImpl();

	@Mock
	private EntityManager entityManager;

	@Mock
	private TypedQuery<Patient> fetchPatientDetailsQuery;

	@Mock
	private MapperFacade mapperFacade;

	@Before
	public void init() {
		MockitoAnnotations.initMocks(PatientServiceController.class);
		MockitoAnnotations.initMocks(PatientService.class);
		MockitoAnnotations.initMocks(PatientDAO.class);
		ReflectionTestUtils.setField(patientServiceController, "patientService", patientService);
		ReflectionTestUtils.setField(patientService, "mapperFacade", mapperFacade);
		ReflectionTestUtils.setField(patientService, "patientDAO", patientDAO);
		ReflectionTestUtils.setField(patientDAO, "entityManager", entityManager);
	}

	@Test
	public void getPatientDetails_Success() throws DefaultWrappedException, ParseException {
		Patient mockedPatient = getPatient();
		PatientDTO mockedPatientDTO = getPatientDTO(mockedPatient);

		Mockito.doReturn(fetchPatientDetailsQuery).when(this.entityManager).createNamedQuery(Mockito.anyString(), Mockito.eq(Patient.class));
		Mockito.doReturn(mockedPatient).when(this.fetchPatientDetailsQuery).getSingleResult();
		Mockito.doReturn(mockedPatientDTO).when(this.mapperFacade).map(Mockito.any(Patient.class), Mockito.eq(PatientDTO.class));
		PatientDTO patientDTO = patientServiceController.getPatientDetails(NHS_NUMBER);

		Assert.assertEquals("Mocked and returned Address should be equal.", mockedPatientDTO.getAddress(), patientDTO.getAddress());
		Assert.assertEquals("Mocked and returned  should be equal.", mockedPatientDTO.getContact(), patientDTO.getContact());
		Assert.assertEquals("Mocked and returned  should be equal.", mockedPatientDTO.getDateOfBirth(), patientDTO.getDateOfBirth());
		Assert.assertEquals("Mocked and returned  should be equal.", mockedPatientDTO.getFirstName(), patientDTO.getFirstName());
		Assert.assertEquals("Mocked and returned  should be equal.", mockedPatientDTO.getId(), patientDTO.getId());
		Assert.assertEquals("Mocked and returned  should be equal.", mockedPatientDTO.getLastName(), patientDTO.getLastName());
		Assert.assertEquals("Mocked and returned  should be equal.", mockedPatientDTO.getNhsNumber(), patientDTO.getNhsNumber());
		Assert.assertEquals("Mocked and returned  should be equal.", mockedPatientDTO.getPostalCode(), patientDTO.getPostalCode());

		Mockito.verify(this.patientDAO, times(1)).fetchPatientDetailsByNHSNumber(Mockito.anyString());
		Mockito.verify(this.entityManager, times(1)).createNamedQuery(Mockito.anyString(), Mockito.eq(Patient.class));
		Mockito.verify(this.fetchPatientDetailsQuery, times(1)).getSingleResult();
		Mockito.verify(this.mapperFacade, times(1)).map(Mockito.any(Patient.class), Mockito.eq(PatientDTO.class));
		Mockito.verify(this.patientService, times(1)).getPatientDetails(Mockito.anyString());
	}

	@Test(expected = DefaultWrappedException.class)
	public void getPatientDetails_Failure_No_Referral_Found() throws DefaultWrappedException, ParseException {
		Mockito.doReturn(fetchPatientDetailsQuery).when(this.entityManager).createNamedQuery(Mockito.anyString(), Mockito.eq(Patient.class));
		Mockito.doThrow(new NoResultException()).when(this.fetchPatientDetailsQuery).getSingleResult();
		patientServiceController.getPatientDetails(NHS_NUMBER);
	}

	private Patient getPatient() throws ParseException {
		Patient patient = new Patient(NHS_NUMBER, TimestampUtil.getTimestamp("02/12/" + YEAR_OF_BIRTH, TimestampUtil.DD_MM_YYY), "firstName", "lastName");
		return patient;
	}

	private PatientDTO getPatientDTO(Patient patient) {
		PatientDTO patientDTO = new PatientDTO(patient.getId(), patient.getNhsNumber(), patient.getDateOfBirth(), patient.getFirstName(), patient.getLastName(), patient.getContact(), patient.getPostalCode(), patient.getAddress());
		return patientDTO;
	}
}