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

import uk.gov.nhs.digital.ers.service.dao.impl.ReferralDAO;
import uk.gov.nhs.digital.ers.service.dao.impl.ReferralDAOImpl;
import uk.gov.nhs.digital.ers.service.domain.ReferralRequestDTO;
import uk.gov.nhs.digital.ers.service.entities.Patient;
import uk.gov.nhs.digital.ers.service.entities.ReferralRequest;
import uk.gov.nhs.digital.ers.service.entities.ReferralStatusLookup;
import uk.gov.nhs.digital.ers.service.entities.Service;
import uk.gov.nhs.digital.ers.service.exception.AuthenticationException;
import uk.gov.nhs.digital.ers.service.services.EncryptionDecryptionService;
import uk.gov.nhs.digital.ers.service.services.ReferralService;

import com.dev.ops.common.utils.TimestampUtil;
import com.dev.ops.exceptions.impl.DefaultWrappedException;

@RunWith(MockitoJUnitRunner.class)
public class ReferralServiceControllerTest {

	private static final String REFERRAL_NUMBER = "000000000001";
	private static final int YEAR_OF_BIRTH = 1987;
	private static final String PASSWORD = "12345";
	private static final String ENCRYPTED_PASSWORD = "fmEcSayXTEq0H1zCBhuQ8Q==";
	private static final String PASSWORD_ENCRYPTION_KEY = "pas$2345Acd1&%45";

	@InjectMocks
	private final ReferralServiceController referralServiceController = new ReferralServiceController();

	@Spy
	private ReferralService referralService = new ReferralService();

	@Spy
	private ReferralDAO referralDAO = new ReferralDAOImpl();

	@Spy
	private EncryptionDecryptionService encryptionDecryptionService = new EncryptionDecryptionService();

	@Mock
	private EntityManager entityManager;

	@Mock
	private TypedQuery<ReferralRequest> fetchReferralRequestQuery;

	@Mock
	private MapperFacade mapperFacade;


	@Before
	public void init() {
		MockitoAnnotations.initMocks(ReferralServiceController.class);
		MockitoAnnotations.initMocks(ReferralService.class);
		MockitoAnnotations.initMocks(ReferralDAO.class);
		ReflectionTestUtils.setField(referralServiceController, "referralService", referralService);
		ReflectionTestUtils.setField(referralService, "mapperFacade", mapperFacade);
		ReflectionTestUtils.setField(referralService, "referralDAO", referralDAO);
		ReflectionTestUtils.setField(referralService, "encryptionDecryptionService", encryptionDecryptionService);
		ReflectionTestUtils.setField(encryptionDecryptionService, "passwordEncryptionKey", PASSWORD_ENCRYPTION_KEY);
		ReflectionTestUtils.setField(referralDAO, "entityManager", entityManager);
	}

	@Test
	public void verifyReferral_Success() throws DefaultWrappedException, ParseException {
		ReferralRequestDTO mockedReferralRequestDTO = getReferralRequestDTO();
		ReferralRequest mockedReferralRequest = getReferralRequest();

		Mockito.doReturn(fetchReferralRequestQuery).when(this.entityManager).createNamedQuery(Mockito.anyString(), Mockito.eq(ReferralRequest.class));
		Mockito.doReturn(mockedReferralRequest).when(this.fetchReferralRequestQuery).getSingleResult();
		Mockito.doReturn(mockedReferralRequestDTO).when(this.mapperFacade).map(Mockito.any(ReferralRequest.class), Mockito.eq(ReferralRequestDTO.class));

		ReferralRequestDTO referralRequest = referralServiceController.verifyReferral(REFERRAL_NUMBER, YEAR_OF_BIRTH, PASSWORD);

		Assert.assertEquals("Mocked and returned objects should be equal.", mockedReferralRequestDTO, referralRequest);
		Assert.assertEquals("Mocked and returned NhsNumber should be equal.", mockedReferralRequestDTO.getNhsNumber(), referralRequest.getNhsNumber());
		Assert.assertEquals("Mocked and returned ReferralNumber should be equal.", mockedReferralRequestDTO.getReferralNumber(), referralRequest.getReferralNumber());
		Assert.assertEquals("Mocked and returned ReferralStatus should be equal.", mockedReferralRequestDTO.getReferralStatus(), referralRequest.getReferralStatus());
		Assert.assertEquals("Mocked and returned ReferredBy should be equal.", mockedReferralRequestDTO.getReferredBy(), referralRequest.getReferredBy());
		Assert.assertEquals("Mocked and returned ReferredDate should be equal.", mockedReferralRequestDTO.getReferredDate(), referralRequest.getReferredDate());

		Mockito.verify(this.referralDAO, times(1)).fetchReferralByNumber(Mockito.anyString());
		Mockito.verify(this.entityManager, times(1)).createNamedQuery(Mockito.anyString(), Mockito.eq(ReferralRequest.class));
		Mockito.verify(this.fetchReferralRequestQuery, times(1)).getSingleResult();
		Mockito.verify(this.mapperFacade, times(1)).map(Mockito.any(ReferralRequest.class), Mockito.eq(ReferralRequestDTO.class));
		Mockito.verify(this.encryptionDecryptionService, times(1)).encrypt(Mockito.anyString());
		Mockito.verify(this.referralService, times(1)).verifyReferralDetails(Mockito.anyString(), Mockito.anyInt(), Mockito.anyString());
	}

	@Test(expected = AuthenticationException.class)
	public void verifyReferral_Failure_No_Referral_Found() throws DefaultWrappedException, ParseException {
		Mockito.doReturn(fetchReferralRequestQuery).when(this.entityManager).createNamedQuery(Mockito.anyString(), Mockito.eq(ReferralRequest.class));
		Mockito.doThrow(new NoResultException()).when(this.fetchReferralRequestQuery).getSingleResult();
		referralServiceController.verifyReferral(REFERRAL_NUMBER, YEAR_OF_BIRTH, PASSWORD);
	}

	@Test(expected = AuthenticationException.class)
	public void verifyReferral_failure_Wrong_YOB() throws DefaultWrappedException, ParseException {
		ReferralRequest mockedReferralRequest = getReferralRequest();
		ReferralRequestDTO mockedReferralRequestDTO = geReferralRequestDTO(mockedReferralRequest);

		Mockito.doReturn(getReferralRequest()).when(this.referralDAO).fetchReferralByNumber(Mockito.anyString());
		Mockito.doReturn(ENCRYPTED_PASSWORD).when(this.encryptionDecryptionService).encrypt(Mockito.anyString());
		Mockito.doReturn(mockedReferralRequestDTO).when(this.mapperFacade).map(Mockito.any(ReferralRequest.class), Mockito.eq(ReferralRequestDTO.class));

		referralService.verifyReferralDetails(REFERRAL_NUMBER, YEAR_OF_BIRTH + 1, PASSWORD);
	}

	@Test
	public void getReferralDetails_Success() throws DefaultWrappedException, ParseException {
		ReferralRequestDTO mockedReferralRequestDTO = getReferralRequestDTO();
		ReferralRequest mockedReferralRequest = getReferralRequest();

		Mockito.doReturn(fetchReferralRequestQuery).when(this.entityManager).createNamedQuery(Mockito.anyString(), Mockito.eq(ReferralRequest.class));
		Mockito.doReturn(mockedReferralRequest).when(this.fetchReferralRequestQuery).getSingleResult();
		Mockito.doReturn(mockedReferralRequestDTO).when(this.mapperFacade).map(Mockito.any(ReferralRequest.class), Mockito.eq(ReferralRequestDTO.class));

		ReferralRequestDTO referralRequest = referralServiceController.getReferralDetails(REFERRAL_NUMBER);

		Assert.assertEquals("Mocked and returned objects should be equal.", mockedReferralRequestDTO, referralRequest);
		Assert.assertEquals("Mocked and returned NhsNumber should be equal.", mockedReferralRequestDTO.getNhsNumber(), referralRequest.getNhsNumber());
		Assert.assertEquals("Mocked and returned ReferralNumber should be equal.", mockedReferralRequestDTO.getReferralNumber(), referralRequest.getReferralNumber());
		Assert.assertEquals("Mocked and returned ReferralStatus should be equal.", mockedReferralRequestDTO.getReferralStatus(), referralRequest.getReferralStatus());
		Assert.assertEquals("Mocked and returned ReferredBy should be equal.", mockedReferralRequestDTO.getReferredBy(), referralRequest.getReferredBy());
		Assert.assertEquals("Mocked and returned ReferredDate should be equal.", mockedReferralRequestDTO.getReferredDate(), referralRequest.getReferredDate());

		Mockito.verify(this.referralDAO, times(1)).fetchReferralByNumber(Mockito.anyString());
		Mockito.verify(this.entityManager, times(1)).createNamedQuery(Mockito.anyString(), Mockito.eq(ReferralRequest.class));
		Mockito.verify(this.fetchReferralRequestQuery, times(1)).getSingleResult();
		Mockito.verify(this.mapperFacade, times(1)).map(Mockito.any(ReferralRequest.class), Mockito.eq(ReferralRequestDTO.class));
		Mockito.verify(this.referralService, times(1)).getReferralDetails(Mockito.anyString());
	}

	@Test(expected = DefaultWrappedException.class)
	public void getReferralDetails_failure_No_Referral_Found() throws DefaultWrappedException, ParseException {
		Mockito.doThrow(new DefaultWrappedException("INVALID_REFERRANCE_DETAILS")).when(this.referralDAO).fetchReferralByNumber(Mockito.anyString());
		referralService.getReferralDetails(REFERRAL_NUMBER);
	}

	private ReferralRequestDTO getReferralRequestDTO() {
		ReferralRequestDTO referralRequest = new ReferralRequestDTO(REFERRAL_NUMBER, "Test", TimestampUtil.getCurentTimestamp(), "7000000001", "BOOKED");
		return referralRequest;
	}

	private ReferralRequestDTO geReferralRequestDTO(ReferralRequest referralRequest) {
		ReferralRequestDTO referralRequestDTO = new ReferralRequestDTO(referralRequest.getReferralNumber(), referralRequest.getReferredBy(), referralRequest.getReferredDate(), referralRequest.getPatient().getNhsNumber(), referralRequest.getReferralStatus().getStatus());
		return referralRequestDTO;
	}

	private ReferralRequest getReferralRequest() throws ParseException {
		ReferralRequest referralRequest = new ReferralRequest(REFERRAL_NUMBER, ENCRYPTED_PASSWORD, "Test", TimestampUtil.getCurentTimestamp());
		referralRequest.setPatient(new Patient("7123123121", TimestampUtil.getTimestamp("02/12/" + YEAR_OF_BIRTH, TimestampUtil.DD_MM_YYY), "firstName", "lastName"));
		referralRequest.setReferralStatus(new ReferralStatusLookup("BOOKED", "Referral booked"));
		referralRequest.setService(new Service(1L, "CANCER", "Cancer"));
		return referralRequest;
	}
}