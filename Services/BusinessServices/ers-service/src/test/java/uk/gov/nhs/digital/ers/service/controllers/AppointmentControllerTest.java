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

import uk.gov.nhs.digital.ers.service.dao.impl.AppointmentCancelLookupDAO;
import uk.gov.nhs.digital.ers.service.dao.impl.AppointmentCancelLookupDAOImpl;
import uk.gov.nhs.digital.ers.service.dao.impl.AppointmentDAO;
import uk.gov.nhs.digital.ers.service.dao.impl.AppointmentDAOImpl;
import uk.gov.nhs.digital.ers.service.dao.impl.ReferralDAO;
import uk.gov.nhs.digital.ers.service.dao.impl.ReferralDAOImpl;
import uk.gov.nhs.digital.ers.service.domain.AppointmentDTO;
import uk.gov.nhs.digital.ers.service.entities.Appointment;
import uk.gov.nhs.digital.ers.service.entities.AppointmentCancelReasonLookup;
import uk.gov.nhs.digital.ers.service.entities.AppointmentStatusLookup;
import uk.gov.nhs.digital.ers.service.entities.Hospital;
import uk.gov.nhs.digital.ers.service.entities.HospitalServiceEntity;
import uk.gov.nhs.digital.ers.service.entities.HospitalServiceLookup;
import uk.gov.nhs.digital.ers.service.entities.Patient;
import uk.gov.nhs.digital.ers.service.entities.ReferralRequest;
import uk.gov.nhs.digital.ers.service.entities.ReferralStatusLookup;
import uk.gov.nhs.digital.ers.service.entities.Service;
import uk.gov.nhs.digital.ers.service.services.AppointmentService;

import com.dev.ops.common.utils.TimestampUtil;
import com.dev.ops.exceptions.impl.DefaultWrappedException;

@RunWith(MockitoJUnitRunner.class)
public class AppointmentControllerTest {

	private static final String REFERRAL_NUMBER = "000000000001";
	private static final int YEAR_OF_BIRTH = 1987;
	private static final String ENCRYPTED_PASSWORD = "fmEcSayXTEq0H1zCBhuQ8Q==";

	@InjectMocks
	private final AppointmentController appointmentController = new AppointmentController();

	@Spy
	private final AppointmentService appointmentService = new AppointmentService();

	@Spy
	private final ReferralDAO referralDAO = new ReferralDAOImpl();

	@Spy
	private final AppointmentCancelLookupDAO cancelReasonDAO = new AppointmentCancelLookupDAOImpl();

	@Spy
	private final AppointmentDAO appointmentDAO = new AppointmentDAOImpl();

	/*@Spy
	private final AppointmentStatusLookupDAO appointmentStatusLookupDAO = new AppointmentStatusLookupDAOImpl();

	@Spy
	private final ReferralStatusLookupDAO referralStatusLookupDAO = new ReferralStatusLookupDAOImpl();
	*/
	@Mock
	private EntityManager entityManager;

	@Mock
	private TypedQuery<Appointment> fetchHospitalsQuery;

	@Mock
	private TypedQuery<ReferralRequest> fetchReferralRequestQuery;

	@Mock
	private TypedQuery<AppointmentCancelReasonLookup> fetchAppointmentCancelLookupQuery;

	@Mock
	private MapperFacade mapperFacade;

	@Before
	public void init() {
		MockitoAnnotations.initMocks(AppointmentController.class);
		MockitoAnnotations.initMocks(AppointmentService.class);
		MockitoAnnotations.initMocks(ReferralDAO.class);
		MockitoAnnotations.initMocks(AppointmentDAO.class);
		MockitoAnnotations.initMocks(AppointmentCancelLookupDAO.class);
		//MockitoAnnotations.initMocks(AppointmentStatusLookupDAO.class);
		//MockitoAnnotations.initMocks(ReferralStatusLookupDAO.class);
		ReflectionTestUtils.setField(this.appointmentController, "appointmentService", this.appointmentService);
		ReflectionTestUtils.setField(this.appointmentService, "mapperFacade", this.mapperFacade);
		ReflectionTestUtils.setField(this.appointmentService, "referralDAO", this.referralDAO);
		ReflectionTestUtils.setField(this.appointmentService, "appointmentDAO", this.appointmentDAO);
		//ReflectionTestUtils.setField(this.appointmentService, "appointmentStatusLookupDAO", this.appointmentStatusLookupDAO);
		//ReflectionTestUtils.setField(this.appointmentService, "referralStatusLookupDAO", this.referralStatusLookupDAO);
		ReflectionTestUtils.setField(this.referralDAO, "entityManager", this.entityManager);
		ReflectionTestUtils.setField(this.appointmentDAO, "entityManager", this.entityManager);
		ReflectionTestUtils.setField(this.cancelReasonDAO, "entityManager", this.entityManager);
		//ReflectionTestUtils.setField(this.appointmentStatusLookupDAO, "entityManager", this.entityManager);
		//ReflectionTestUtils.setField(this.referralStatusLookupDAO, "entityManager", this.entityManager);
	}

	@Test
	public void getAppointment_Success() throws DefaultWrappedException, ParseException {
		final AppointmentDTO mockedAppointmentDTO = this.getAppointmentDTO();
		final ReferralRequest mockedReferralRequest = this.getReferralRequest();
		final Appointment mockedAppointment = this.getAppointment();

		Mockito.doReturn(this.fetchReferralRequestQuery).when(this.entityManager).createNamedQuery(Mockito.anyString(), Mockito.eq(ReferralRequest.class));
		Mockito.doReturn(mockedReferralRequest).when(this.fetchReferralRequestQuery).getSingleResult();
		Mockito.doReturn(mockedAppointmentDTO).when(this.mapperFacade).map(Mockito.any(Appointment.class), Mockito.eq(AppointmentDTO.class));
		final AppointmentDTO appointmentDTO = this.appointmentController.getAppointment(REFERRAL_NUMBER);

		Assert.assertEquals("Mocked and returned Referral number should be equal.", mockedAppointment.getReferralRequest().getReferralNumber(), appointmentDTO.getReferralNumber());
		Assert.assertEquals("Mocked and returned cancel reason should be equal.", mockedAppointment.getCancelReason(), appointmentDTO.getCancelReason());
		Assert.assertEquals("Mocked and returned Clinic should be equal.", mockedAppointment.getHospitalService().getHospital().getName(), appointmentDTO.getClinic());
		Assert.assertEquals("Mocked and returned Location should be equal.", mockedAppointment.getHospitalService().getHospital().getAddress(), appointmentDTO.getLocation());
		Assert.assertEquals("Mocked and returned Reffered by should be equal.", mockedAppointment.getReferralRequest().getReferredBy(), appointmentDTO.getReferredby());
		Assert.assertEquals("Mocked and returned Appointment time should be equal.", mockedAppointment.getHospitalService().getSlotStartTime(), appointmentDTO.getAppointmentTime());

		Mockito.verify(this.referralDAO, times(1)).fetchReferralByNumber(Mockito.anyString());
		Mockito.verify(this.entityManager, times(1)).createNamedQuery(Mockito.anyString(), Mockito.eq(ReferralRequest.class));
		Mockito.verify(this.fetchReferralRequestQuery, times(1)).getSingleResult();
		Mockito.verify(this.mapperFacade, times(1)).map(Mockito.any(Appointment.class), Mockito.eq(AppointmentDTO.class));
		Mockito.verify(this.appointmentService, times(1)).getAppointmentByReferral(Mockito.anyString());
	}

	/*@Test(expected = DefaultWrappedException.class)
	public void getAppointment_Failure_No_Referral_Found() throws DefaultWrappedException, ParseException {
		Mockito.doThrow(new NoResultException()).when(this.referralDAO).fetchReferralByNumber(Mockito.anyString());
		this.appointmentController.getAppointment(REFERRAL_NUMBER);
	}*/

	private Appointment getAppointment() throws ParseException {
		final Appointment appointment = new Appointment(1L, null);
		appointment.setAppointmentStatus(new AppointmentStatusLookup("ACTIVE", "Appointment is active"));
		appointment.setHospitalService(this.getHospitalServiceEntity());
		appointment.setReferralRequest(new ReferralRequest(1L, REFERRAL_NUMBER, null, "Test", null));
		return appointment;
	}

	private HospitalServiceEntity getHospitalServiceEntity() throws ParseException {
		final HospitalServiceEntity hospitalServiceEntity = new HospitalServiceEntity(1L, TimestampUtil.getTimestamp("13/10/2016 08:30:00.000", TimestampUtil.DD_MM_YYY_HH_mm_ss_SSS), TimestampUtil.getTimestamp("13/10/2016 08:30:00.000", TimestampUtil.DD_MM_YYY_HH_mm_ss_SSS));
		hospitalServiceEntity.setHospital(this.getHospital());
		hospitalServiceEntity.setHospitalService(new HospitalServiceLookup("AVAILABLE", "Slot for the given service in a hospital is currently available"));
		return hospitalServiceEntity;
	}

	private Hospital getHospital() {
		final Hospital hospital = new Hospital(1L, "YX2", "Leeds General Infirmary", "LS2 1HJ", "0113678675", "lgi@gmail.com", "www.lgi.com", "+44767675667", "Leeds", 1.2d, 1.2d);
		return hospital;
	}

	private AppointmentDTO getAppointmentDTO() throws ParseException {
		final AppointmentDTO appointment = new AppointmentDTO(REFERRAL_NUMBER, "Leeds General Infirmary", "Leeds", "Test", TimestampUtil.getTimestamp("13/10/2016 08:30:00.000", TimestampUtil.DD_MM_YYY_HH_mm_ss_SSS), null);
		return appointment;
	}

	private ReferralRequest getReferralRequest() throws ParseException {
		final ReferralRequest referralRequest = new ReferralRequest(REFERRAL_NUMBER, ENCRYPTED_PASSWORD, "Test", TimestampUtil.getCurentTimestamp());
		referralRequest.setPatient(new Patient("7000000001", TimestampUtil.getTimestamp("02/12/" + YEAR_OF_BIRTH, TimestampUtil.DD_MM_YYY), "firstName", "lastName"));
		referralRequest.setReferralStatus(new ReferralStatusLookup("BOOKED", "Referral booked"));
		referralRequest.setService(new Service(1L, "CANCER", "Cancer"));
		final List<Appointment> appointmentList = new ArrayList<Appointment>();
		appointmentList.add(this.getAppointment());
		referralRequest.setAppointments(appointmentList);
		return referralRequest;
	}

	/*@Test
	public void getCancelReasons_Success() throws DefaultWrappedException, ParseException {
		final AppointmentCancelReasonLookupDTO mockedAppointmentCancelLookupDTO = this.getAppointmentCancelLookupDTO();
		final AppointmentCancelReasonLookup mockedAppointmentCancelLookup = this.getAppointmentCancelLookup();

		final List<AppointmentCancelReasonLookup> mockedCancelReasons = new ArrayList<AppointmentCancelReasonLookup>();
		mockedCancelReasons.add(mockedAppointmentCancelLookup);

		Mockito.doReturn(this.fetchAppointmentCancelLookupQuery).when(this.entityManager).createNamedQuery(Mockito.anyString(), Mockito.eq(AppointmentCancelReasonLookup.class));
		Mockito.doReturn(mockedAppointmentCancelLookupDTO).when(this.mapperFacade).map(Mockito.any(AppointmentCancelReasonLookup.class), Mockito.eq(AppointmentCancelReasonLookupDTO.class));
		Mockito.doReturn(mockedCancelReasons).when(this.fetchAppointmentCancelLookupQuery).getResultList();
		final List<AppointmentCancelReasonLookupDTO> CancelReasons = this.appointmentController.getCancelReasons();
		Assert.assertEquals("Mocked and returned Cancel Reason code  should be equal.", mockedCancelReasons.get(0).getCode(), CancelReasons.get(0).getCode());
		Assert.assertEquals("Mocked and returned Cancel Reason should be equal.", mockedCancelReasons.get(0).getDescription(), CancelReasons.get(0).getDescription());

		Mockito.verify(this.cancelReasonDAO, times(1)).fetchCancelReasons();
		Mockito.verify(this.entityManager, times(1)).createNamedQuery(Mockito.anyString(), Mockito.eq(AppointmentCancelReasonLookup.class));
		Mockito.verify(this.fetchAppointmentCancelLookupQuery, times(1)).getResultList();
		Mockito.verify(this.mapperFacade, times(1)).map(Mockito.any(AppointmentCancelReasonLookup.class), Mockito.eq(AppointmentCancelReasonLookupDTO.class));
		Mockito.verify(this.appointmentService, times(1)).getAppointmentCancelReason();
	}*/

	/*@Test(expected = DefaultWrappedException.class)
	public void getCancelReasons_Failure_No_Referral_Found() throws DefaultWrappedException, ParseException {
		Mockito.doThrow(new NoResultException()).when(this.cancelReasonDAO).fetchCancelReasons();
		this.appointmentController.getCancelReasons();
	}*/

	/*private AppointmentCancelReasonLookupDTO getAppointmentCancelLookupDTO() {
		final AppointmentCancelReasonLookupDTO appointmentCancelLookupDTO = new AppointmentCancelReasonLookupDTO("PATIENT_ON_HOLIDAY", "I am on holiday");
		return appointmentCancelLookupDTO;
	}

	private AppointmentCancelReasonLookup getAppointmentCancelLookup() {
		final AppointmentCancelReasonLookup appointmentCancelLookup = new AppointmentCancelReasonLookup();
		appointmentCancelLookup.setCode("PATIENT_ON_HOLIDAY");
		appointmentCancelLookup.setDescription("I am on holiday");
		return appointmentCancelLookup;
	}*/

	/*@Test
	public void cancelAppointment_Success() throws DefaultWrappedException, ParseException {
		final AppointmentCancelReasonLookupDTO mockedAppointmentCancelLookupDTO = this.getAppointmentCancelLookupDTO();
		final AppointmentCancelReasonLookup mockedAppointmentCancelLookup = this.getAppointmentCancelLookup();

		final List<AppointmentCancelReasonLookup> mockedCancelReasons = new ArrayList<AppointmentCancelReasonLookup>();
		mockedCancelReasons.add(mockedAppointmentCancelLookup);

		Mockito.doReturn(this.fetchAppointmentCancelLookupQuery).when(this.entityManager).createNamedQuery(Mockito.anyString(), Mockito.eq(AppointmentCancelReasonLookup.class));
		Mockito.doReturn(mockedAppointmentCancelLookupDTO).when(this.mapperFacade).map(Mockito.any(AppointmentCancelReasonLookup.class), Mockito.eq(AppointmentCancelReasonLookupDTO.class));
		Mockito.doReturn(mockedCancelReasons).when(this.fetchAppointmentCancelLookupQuery).getResultList();
		final List<AppointmentCancelReasonLookupDTO> CancelReasons = this.appointmentController.getCancelReasons();
		Assert.assertEquals("Mocked and returned Cancel Reason code  should be equal.", mockedCancelReasons.get(0).getCode(), CancelReasons.get(0).getCode());
		Assert.assertEquals("Mocked and returned Cancel Reason should be equal.", mockedCancelReasons.get(0).getDescription(), CancelReasons.get(0).getDescription());

		Mockito.verify(this.cancelReasonDAO, times(1)).fetchCancelReasons();
		Mockito.verify(this.entityManager, times(1)).createNamedQuery(Mockito.anyString(), Mockito.eq(AppointmentCancelReasonLookup.class));
		Mockito.verify(this.fetchAppointmentCancelLookupQuery, times(1)).getResultList();
		Mockito.verify(this.mapperFacade, times(1)).map(Mockito.any(AppointmentCancelReasonLookup.class), Mockito.eq(AppointmentCancelReasonLookupDTO.class));
		Mockito.verify(this.appointmentService, times(1)).getAppointmentCancelReason();
	}*/
}
