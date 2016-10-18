package uk.gov.nhs.digital.ers.service.services;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.test.util.ReflectionTestUtils;

import com.dev.ops.exceptions.impl.DefaultWrappedException;

@RunWith(MockitoJUnitRunner.class)
public class EncryptionDecryptionServiceTest {

	private static final String PASSWORD = "12345";

	@InjectMocks
	private EncryptionDecryptionService encryptionDecryptionService = new EncryptionDecryptionService();

	private static final String PASSWORD_ENCRYPTION_KEY = "pas$2345Acd1&%45";

	@Before
	public void init() {
		MockitoAnnotations.initMocks(EncryptionDecryptionService.class);
		ReflectionTestUtils.setField(encryptionDecryptionService, "passwordEncryptionKey", PASSWORD_ENCRYPTION_KEY);
	}

	@Test
	public void encrypt_decrypt_Success() throws DefaultWrappedException {
		String encryptedText = encryptionDecryptionService.encrypt(PASSWORD);
		String decryptedText = encryptionDecryptionService.decrypt(encryptedText);
		Assert.assertEquals("The decrypted and actual text are equal", PASSWORD, decryptedText);
	}

	@Test(expected = DefaultWrappedException.class)
	public void encrypt_Failure() throws DefaultWrappedException {
		ReflectionTestUtils.setField(encryptionDecryptionService, "passwordEncryptionKey", "12345");
		encryptionDecryptionService.encrypt(PASSWORD);
	}

	@Test(expected = DefaultWrappedException.class)
	public void decrypt_Failure() throws DefaultWrappedException {
		ReflectionTestUtils.setField(encryptionDecryptionService, "passwordEncryptionKey", "12345");
		encryptionDecryptionService.decrypt("1234");
	}
}