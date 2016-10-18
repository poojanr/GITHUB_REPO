package uk.gov.nhs.digital.ers.service.controllers;

import static org.mockito.Mockito.times;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
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

import uk.gov.nhs.digital.ers.service.dao.impl.HospitalDAO;
import uk.gov.nhs.digital.ers.service.dao.impl.HospitalDAOImpl;
import uk.gov.nhs.digital.ers.service.dao.impl.ReferralDAO;
import uk.gov.nhs.digital.ers.service.dao.impl.ReferralDAOImpl;
import uk.gov.nhs.digital.ers.service.domain.HospitalDTO;
import uk.gov.nhs.digital.ers.service.domain.HospitalServiceDTO;
import uk.gov.nhs.digital.ers.service.domain.ServiceDTO;
import uk.gov.nhs.digital.ers.service.entities.Hospital;
import uk.gov.nhs.digital.ers.service.entities.HospitalServiceEntity;
import uk.gov.nhs.digital.ers.service.entities.Patient;
import uk.gov.nhs.digital.ers.service.entities.ReferralRequest;
import uk.gov.nhs.digital.ers.service.entities.ReferralStatusLookup;
import uk.gov.nhs.digital.ers.service.entities.Service;
import uk.gov.nhs.digital.ers.service.services.HospitalService;

import com.dev.ops.common.utils.TimestampUtil;
import com.dev.ops.exceptions.impl.DefaultWrappedException;

@RunWith(MockitoJUnitRunner.class)
public class HospitalServiceControllerTest {

	private static final String REFERRAL_NUMBER = "000000000001";
	private static final int YEAR_OF_BIRTH = 1987;
	private static final String ENCRYPTED_PASSWORD = "fmEcSayXTEq0H1zCBhuQ8Q==";
	private static final Long HOSPITAL_ID = 1L;

	@InjectMocks
	private final HospitalServiceController hospitalServiceController = new HospitalServiceController();

	@Spy
	private HospitalService hospitalService = new HospitalService();

	@Spy
	private ReferralDAO referralDAO = new ReferralDAOImpl();

	@Spy
	private HospitalDAO hospitalDAO = new HospitalDAOImpl();

	@Mock
	private EntityManager entityManager;

	@Mock
	private TypedQuery<Hospital> fetchHospitalAppointmentSlots;

	@Mock
	private TypedQuery<Hospital> fetchHospitalsQuery;

	@Mock
	private TypedQuery<ReferralRequest> fetchReferralRequestQuery;

	@Mock
	private MapperFacade mapperFacade;

	@Before
	public void init() {
		MockitoAnnotations.initMocks(HospitalServiceController.class);
		MockitoAnnotations.initMocks(HospitalService.class);
		MockitoAnnotations.initMocks(ReferralDAO.class);
		MockitoAnnotations.initMocks(HospitalDAO.class);
		ReflectionTestUtils.setField(hospitalServiceController, "hospitalService", hospitalService);
		ReflectionTestUtils.setField(hospitalService, "mapperFacade", mapperFacade);
		ReflectionTestUtils.setField(hospitalService, "referralDAO", referralDAO);
		ReflectionTestUtils.setField(hospitalService, "hospitalDAO", hospitalDAO);
		ReflectionTestUtils.setField(referralDAO, "entityManager", entityManager);
		ReflectionTestUtils.setField(hospitalDAO, "entityManager", entityManager);
	}

	@Test
	public void getHospitalsByReferral_Success() throws DefaultWrappedException, ParseException {
		Service mockedService = getService();
		Hospital mockedHospital = getHospital();
		HospitalDTO mockedHospitalDTO = getHospitalDTO(mockedHospital);
		ReferralRequest mockedReferralRequest = getReferralRequest(mockedService);
		List<Hospital> mockedHospitals = new ArrayList<Hospital>();
		mockedHospitals.add(mockedHospital);

		Mockito.doReturn(fetchReferralRequestQuery).when(this.entityManager).createNamedQuery(Mockito.anyString(), Mockito.eq(ReferralRequest.class));
		Mockito.doReturn(fetchHospitalsQuery).when(this.entityManager).createNamedQuery(Mockito.anyString(), Mockito.eq(Hospital.class));
		Mockito.doReturn(mockedReferralRequest).when(this.fetchReferralRequestQuery).getSingleResult();
		Mockito.doReturn(mockedHospitals).when(this.fetchHospitalsQuery).getResultList();
		Mockito.doReturn(mockedHospitalDTO).when(this.mapperFacade).map(Mockito.any(Hospital.class), Mockito.eq(HospitalDTO.class));
		List<HospitalDTO> hospitalDTOs = hospitalServiceController.getHospitalsByReferral(REFERRAL_NUMBER);

		Assert.assertEquals("Mocked and returned list size should be equal.", mockedHospitals.size(), hospitalDTOs.size());
		Assert.assertEquals("Mocked and returned Address should be equal.", mockedHospitals.get(0).getAddress(), hospitalDTOs.get(0).getAddress());
		Assert.assertEquals("Mocked and returned Contact should be equal.", mockedHospitals.get(0).getContact(), hospitalDTOs.get(0).getContact());
		Assert.assertEquals("Mocked and returned Email should be equal.", mockedHospitals.get(0).getEmail(), hospitalDTOs.get(0).getEmail());
		Assert.assertEquals("Mocked and returned Fax should be equal.", mockedHospitals.get(0).getFax(), hospitalDTOs.get(0).getFax());
		Assert.assertEquals("Mocked and returned Id should be equal.", mockedHospitals.get(0).getId(), hospitalDTOs.get(0).getId());
		Assert.assertEquals("Mocked and returned Latitude should be equal.", mockedHospitals.get(0).getLatitude(), hospitalDTOs.get(0).getLatitude());
		Assert.assertEquals("Mocked and returned Longitude should be equal.", mockedHospitals.get(0).getLongitude(), hospitalDTOs.get(0).getLongitude());
		Assert.assertEquals("Mocked and returned Name should be equal.", mockedHospitals.get(0).getName(), hospitalDTOs.get(0).getName());
		Assert.assertEquals("Mocked and returned OrganisationCode should be equal.", mockedHospitals.get(0).getOrganisationCode(), hospitalDTOs.get(0).getOrganisationCode());
		Assert.assertEquals("Mocked and returned PostalCode should be equal.", mockedHospitals.get(0).getPostalCode(), hospitalDTOs.get(0).getPostalCode());
		Assert.assertEquals("Mocked and returned Website should be equal.", mockedHospitals.get(0).getWebsite(), hospitalDTOs.get(0).getWebsite());

		Mockito.verify(this.referralDAO, times(1)).fetchReferralByNumber(Mockito.anyString());
		Mockito.verify(this.hospitalDAO, times(1)).fetchHospitalsByService(Mockito.anyLong());
		Mockito.verify(this.entityManager, times(1)).createNamedQuery(Mockito.anyString(), Mockito.eq(ReferralRequest.class));
		Mockito.verify(this.entityManager, times(1)).createNamedQuery(Mockito.anyString(), Mockito.eq(Hospital.class));
		Mockito.verify(this.fetchReferralRequestQuery, times(1)).getSingleResult();
		Mockito.verify(this.fetchHospitalsQuery, times(1)).getResultList();
		Mockito.verify(this.mapperFacade, times(1)).map(Mockito.any(Hospital.class), Mockito.eq(HospitalDTO.class));
		Mockito.verify(this.hospitalService, times(1)).getHospitals(Mockito.anyString());
	}

	@Test(expected = DefaultWrappedException.class)
	public void getHospitalsByReferral_Failure_No_Referral_Found() throws DefaultWrappedException, ParseException {
		Mockito.doThrow(new DefaultWrappedException("INVALID_REFERRANCE_DETAILS")).when(this.referralDAO).fetchReferralByNumber(Mockito.anyString());
		hospitalServiceController.getHospitalsByReferral(REFERRAL_NUMBER);
	}

	@Test
	public void getHospitalAppointmentSlots_Success() throws DefaultWrappedException, ParseException {
		Service mockedService = getService();
		Hospital mockedHospital = getHospital();
		ReferralRequest mockedReferralRequest = getReferralRequest(mockedService);
		HospitalServiceEntity mockedAppointmentSlot = getHospitalService(mockedHospital, mockedService);
		HospitalServiceDTO mockedAppointmentSlotDTO = getHospitalServiceDTO(mockedAppointmentSlot);
		List<HospitalServiceEntity> mockedAppointmentSlots = new ArrayList<HospitalServiceEntity>();
		mockedAppointmentSlots.add(mockedAppointmentSlot);

		Mockito.doReturn(fetchReferralRequestQuery).when(this.entityManager).createNamedQuery(Mockito.anyString(), Mockito.eq(ReferralRequest.class));
		Mockito.doReturn(fetchHospitalAppointmentSlots).when(this.entityManager).createNamedQuery(Mockito.anyString(), Mockito.eq(HospitalServiceEntity.class));
		Mockito.doReturn(mockedReferralRequest).when(this.fetchReferralRequestQuery).getSingleResult();
		Mockito.doReturn(mockedAppointmentSlots).when(this.fetchHospitalAppointmentSlots).getResultList();
		Mockito.doReturn(mockedAppointmentSlotDTO).when(this.mapperFacade).map(Mockito.any(HospitalServiceEntity.class), Mockito.eq(HospitalServiceDTO.class));
		List<HospitalServiceDTO> appointmentSlots = hospitalServiceController.getHospitalAppointmentSlots(REFERRAL_NUMBER, HOSPITAL_ID);

		Assert.assertEquals("Mocked and returned list size should be equal.", mockedAppointmentSlots.size(), appointmentSlots.size());
		Assert.assertEquals("Mocked and returned Id should be equal.", mockedAppointmentSlots.get(0).getId(), appointmentSlots.get(0).getId());
		Assert.assertEquals("Mocked and returned  should be equal.", mockedAppointmentSlots.get(0).getSlotStartTime(), appointmentSlots.get(0).getSlotStartTime());
		Assert.assertEquals("Mocked and returned  should be equal.", mockedAppointmentSlots.get(0).getSlotEndTime(), appointmentSlots.get(0).getSlotEndTime());
		Assert.assertEquals("Mocked and returned Service Id should be equal.", mockedAppointmentSlots.get(0).getService().getId(), appointmentSlots.get(0).getService().getId());
		Assert.assertEquals("Mocked and returned Service Code should be equal.", mockedAppointmentSlots.get(0).getService().getCode(), appointmentSlots.get(0).getService().getCode());
		Assert.assertEquals("Mocked and returned Service Description should be equal.", mockedAppointmentSlots.get(0).getService().getDescription(), appointmentSlots.get(0).getService().getDescription());
		Assert.assertEquals("Mocked and returned Hospital Address should be equal.", mockedAppointmentSlots.get(0).getHospital().getAddress(), appointmentSlots.get(0).getHospital().getAddress());
		Assert.assertEquals("Mocked and returned Hospital Contact should be equal.", mockedAppointmentSlots.get(0).getHospital().getContact(), appointmentSlots.get(0).getHospital().getContact());
		Assert.assertEquals("Mocked and returned Hospital Email should be equal.", mockedAppointmentSlots.get(0).getHospital().getEmail(), appointmentSlots.get(0).getHospital().getEmail());
		Assert.assertEquals("Mocked and returned Hospital Fax should be equal.", mockedAppointmentSlots.get(0).getHospital().getFax(), appointmentSlots.get(0).getHospital().getFax());
		Assert.assertEquals("Mocked and returned Hospital Id should be equal.", mockedAppointmentSlots.get(0).getHospital().getId(), appointmentSlots.get(0).getHospital().getId());
		Assert.assertEquals("Mocked and returned Hospital Latitude should be equal.", mockedAppointmentSlots.get(0).getHospital().getLatitude(), appointmentSlots.get(0).getHospital().getLatitude());
		Assert.assertEquals("Mocked and returned Hospital Longitude should be equal.", mockedAppointmentSlots.get(0).getHospital().getLongitude(), appointmentSlots.get(0).getHospital().getLongitude());
		Assert.assertEquals("Mocked and returned Hospital Name should be equal.", mockedAppointmentSlots.get(0).getHospital().getName(), appointmentSlots.get(0).getHospital().getName());
		Assert.assertEquals("Mocked and returned Hospital OrganisationCode should be equal.", mockedAppointmentSlots.get(0).getHospital().getOrganisationCode(), appointmentSlots.get(0).getHospital().getOrganisationCode());
		Assert.assertEquals("Mocked and returned Hospital PostalCode should be equal.", mockedAppointmentSlots.get(0).getHospital().getPostalCode(), appointmentSlots.get(0).getHospital().getPostalCode());
		Assert.assertEquals("Mocked and returned Hospital Website should be equal.", mockedAppointmentSlots.get(0).getHospital().getWebsite(), appointmentSlots.get(0).getHospital().getWebsite());

		Mockito.verify(this.referralDAO, times(1)).fetchReferralByNumber(Mockito.anyString());
		Mockito.verify(this.hospitalDAO, times(1)).fetchHospitalAppointmentSlots(Mockito.anyLong(), Mockito.anyLong());
		Mockito.verify(this.entityManager, times(1)).createNamedQuery(Mockito.anyString(), Mockito.eq(ReferralRequest.class));
		Mockito.verify(this.entityManager, times(1)).createNamedQuery(Mockito.anyString(), Mockito.eq(HospitalServiceEntity.class));
		Mockito.verify(this.fetchReferralRequestQuery, times(1)).getSingleResult();
		Mockito.verify(this.fetchHospitalAppointmentSlots, times(1)).getResultList();
		Mockito.verify(this.mapperFacade, times(1)).map(Mockito.any(HospitalServiceEntity.class), Mockito.eq(HospitalServiceDTO.class));
		Mockito.verify(this.hospitalService, times(1)).getHospitalAppointmentSlots(Mockito.anyString(), Mockito.anyLong());
	}

	@Test(expected = DefaultWrappedException.class)
	public void getHospitalAppointmentSlots_Failure_No_Referral_Found() throws DefaultWrappedException, ParseException {
		Mockito.doThrow(new DefaultWrappedException("INVALID_REFERRANCE_DETAILS")).when(this.referralDAO).fetchReferralByNumber(Mockito.anyString());
		hospitalServiceController.getHospitalAppointmentSlots(REFERRAL_NUMBER, HOSPITAL_ID);
	}

	private Hospital getHospital() {
		Hospital hospital = new Hospital(1L, "YX2", "Leeds General Infirmary", "LS2 1HJ", "0113678675", "lgi@gmail.com", "www.lgi.com", "+44767675667", "Leeds", 1.2d, 1.2d);
		return hospital;
	}

	private HospitalDTO getHospitalDTO(Hospital hospital) {
		HospitalDTO hospitalDTO = new HospitalDTO(hospital.getId(), hospital.getOrganisationCode(), hospital.getName(), hospital.getPostalCode(), hospital.getContact(), hospital.getEmail(), hospital.getWebsite(), hospital.getFax(), hospital.getAddress(), hospital.getLatitude(), hospital.getLongitude(), null);
		return hospitalDTO;
	}

	private ReferralRequest getReferralRequest(Service service) throws ParseException {
		ReferralRequest referralRequest = new ReferralRequest(REFERRAL_NUMBER, ENCRYPTED_PASSWORD, "Test", TimestampUtil.getCurentTimestamp());
		referralRequest.setPatient(new Patient("7123123121", TimestampUtil.getTimestamp("02/12/" + YEAR_OF_BIRTH, TimestampUtil.DD_MM_YYY), "firstName", "lastName"));
		referralRequest.setReferralStatus(new ReferralStatusLookup("BOOKED", "Referral booked"));
		referralRequest.setService(service);
		return referralRequest;
	}

	private Service getService() {
		return new Service(1L, "CANCER", "Cancer");
	}

	private ServiceDTO getServiceDTO(Service service) {
		return new ServiceDTO(service.getId(), service.getCode(), service.getDescription());
	}

	private HospitalServiceEntity getHospitalService(Hospital hospital, Service service) {
		HospitalServiceEntity hospitalService = new HospitalServiceEntity(1L, TimestampUtil.getCurentTimestamp(), TimestampUtil.getCurentPlusAdditionalTimestamp(123214345L));
		hospitalService.setHospital(hospital);
		hospitalService.setService(service);
		return hospitalService;
	}

	private HospitalServiceDTO getHospitalServiceDTO(HospitalServiceEntity hospitalService) {
		HospitalServiceDTO hospitalServiceDTO = new HospitalServiceDTO(hospitalService.getId(), hospitalService.getSlotStartTime(), hospitalService.getSlotEndTime());
		hospitalServiceDTO.setHospital(getHospitalDTO(hospitalService.getHospital()));
		hospitalServiceDTO.setService(getServiceDTO(hospitalService.getService()));
		return hospitalServiceDTO;
	}
}