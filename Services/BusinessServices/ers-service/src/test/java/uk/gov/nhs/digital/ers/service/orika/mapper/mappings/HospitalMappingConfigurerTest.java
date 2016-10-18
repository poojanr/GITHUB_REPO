package uk.gov.nhs.digital.ers.service.orika.mapper.mappings;

import java.util.HashSet;
import java.util.Set;

import ma.glasnost.orika.MapperFacade;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import uk.gov.nhs.digital.ers.service.domain.HospitalDTO;
import uk.gov.nhs.digital.ers.service.entities.Hospital;
import uk.gov.nhs.digital.ers.service.entities.HospitalStatusLookup;

import com.dev.ops.common.orika.mapper.config.MapperFacadeFactoryBean;
import com.dev.ops.common.orika.mapper.config.MappingConfigurer;

public class HospitalMappingConfigurerTest {

	private MapperFacade mapperFacade;

	@Before
	public void setUp() throws Exception {
		Set<MappingConfigurer> mappingConfigurers = new HashSet<MappingConfigurer>();
		mappingConfigurers.add(new HospitalMappingConfigurer());
		MapperFacadeFactoryBean mapperFacadeFactoryBean = new MapperFacadeFactoryBean(mappingConfigurers);
		mapperFacade = mapperFacadeFactoryBean.getObject();
	}

	@Test
	public void testHospitalToHospitalDTO() {
		Hospital hospital = getHospital();
		HospitalDTO hospitalDTO = mapperFacade.map(hospital, HospitalDTO.class);

		Assert.assertEquals("Mocked and returned Address should be equal.", hospital.getAddress(), hospitalDTO.getAddress());
		Assert.assertEquals("Mocked and returned Contact should be equal.", hospital.getContact(), hospitalDTO.getContact());
		Assert.assertEquals("Mocked and returned Email should be equal.", hospital.getEmail(), hospitalDTO.getEmail());
		Assert.assertEquals("Mocked and returned Fax should be equal.", hospital.getFax(), hospitalDTO.getFax());
		Assert.assertEquals("Mocked and returned Id should be equal.", hospital.getId(), hospitalDTO.getId());
		Assert.assertEquals("Mocked and returned Latitude should be equal.", hospital.getLatitude(), hospitalDTO.getLatitude());
		Assert.assertEquals("Mocked and returned Longitude should be equal.", hospital.getLongitude(), hospitalDTO.getLongitude());
		Assert.assertEquals("Mocked and returned Name should be equal.", hospital.getName(), hospitalDTO.getName());
		Assert.assertEquals("Mocked and returned OrganisationCode should be equal.", hospital.getOrganisationCode(), hospitalDTO.getOrganisationCode());
		Assert.assertEquals("Mocked and returned PostalCode should be equal.", hospital.getPostalCode(), hospitalDTO.getPostalCode());
		Assert.assertEquals("Mocked and returned Website should be equal.", hospital.getWebsite(), hospitalDTO.getWebsite());
		Assert.assertEquals("Mocked and returned Website should be equal.", hospital.getHospitalStatus().getStatus(), hospitalDTO.getStatus());
	}

	private Hospital getHospital() {
		Hospital hospital = new Hospital(1L, "YX2", "Leeds General Infirmary", "LS2 1HJ", "0113678675", "lgi@gmail.com", "www.lgi.com", "+44767675667", "Leeds", 1.2d, 1.2d);
		hospital.setHospitalStatus(new HospitalStatusLookup(1, "ONLINE", "Online"));
		return hospital;
	}
}
