package uk.gov.nhs.digital.ers.service.orika.mapper.mappings;

import java.text.ParseException;
import java.util.HashSet;
import java.util.Set;

import ma.glasnost.orika.MapperFacade;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import uk.gov.nhs.digital.ers.service.domain.ReferralRequestDTO;
import uk.gov.nhs.digital.ers.service.entities.Patient;
import uk.gov.nhs.digital.ers.service.entities.ReferralRequest;
import uk.gov.nhs.digital.ers.service.entities.ReferralStatusLookup;

import com.dev.ops.common.orika.mapper.config.MapperFacadeFactoryBean;
import com.dev.ops.common.orika.mapper.config.MappingConfigurer;
import com.dev.ops.common.utils.TimestampUtil;

public class ReferralRequestMappingConfigurerTest {

	private MapperFacade mapperFacade;

	private static final String REFERRAL_NUMBER = "000000000001";
	private static final int YEAR_OF_BIRTH = 1987;
	private static final String ENCRYPTED_PASSWORD = "fmEcSayXTEq0H1zCBhuQ8Q==";

	@Before
	public void setUp() throws Exception {
		Set<MappingConfigurer> mappingConfigurers = new HashSet<MappingConfigurer>();
		mappingConfigurers.add(new ReferralMappingConfigurer());
		MapperFacadeFactoryBean mapperFacadeFactoryBean = new MapperFacadeFactoryBean(mappingConfigurers);
		mapperFacade = mapperFacadeFactoryBean.getObject();
	}

	@Test
	public void testReferralRequestToReferralRequestDTO() throws ParseException {
		ReferralRequest referralRequest = getReferralRequest();
		ReferralRequestDTO referralRequestDTO = mapperFacade.map(referralRequest, ReferralRequestDTO.class);

		Assert.assertEquals("Mocked and returned NhsNumber should be equal.", referralRequest.getPatient().getNhsNumber(), referralRequestDTO.getNhsNumber());
		Assert.assertEquals("Mocked and returned ReferralNumber should be equal.", referralRequest.getReferralNumber(), referralRequestDTO.getReferralNumber());
		Assert.assertEquals("Mocked and returned ReferralStatus should be equal.", referralRequest.getReferralStatus().getStatus(), referralRequestDTO.getReferralStatus());
		Assert.assertEquals("Mocked and returned ReferredBy should be equal.", referralRequest.getReferredBy(), referralRequestDTO.getReferredBy());
		Assert.assertEquals("Mocked and returned ReferredDate should be equal.", referralRequest.getReferredDate(), referralRequestDTO.getReferredDate());
	}

	private ReferralRequest getReferralRequest() throws ParseException {
		ReferralRequest referralRequest = new ReferralRequest(REFERRAL_NUMBER, ENCRYPTED_PASSWORD, "Test", TimestampUtil.getCurentTimestamp());
		referralRequest.setPatient(new Patient("7000000001", TimestampUtil.getTimestamp("02/12/" + YEAR_OF_BIRTH, TimestampUtil.DD_MM_YYY), "firstName", "lastName"));
		referralRequest.setReferralStatus(new ReferralStatusLookup("BOOKED", "Referral booked"));
		return referralRequest;
	}
}
