/* Copyright (C) 2016 Krishna Kuntala @ Mastek <krishna.kuntala@mastek.com>
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License. */
package uk.gov.nhs.digital.ers.service.services;

import java.security.Key;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import com.dev.ops.exceptions.impl.DefaultWrappedException;

@Component
public class EncryptionDecryptionService {

	@Value("${ers.service.password.encryption.key}")
	private String passwordEncryptionKey;

	private static final String ALGORITHM = "AES";
	private static final String UNICODE_FORMAT = "UTF8";

	public String encrypt(final String text) throws DefaultWrappedException {
		String encryptedText = null;
		try {
			final Key key = this.generateKey();
			final Cipher c = Cipher.getInstance(ALGORITHM);
			c.init(Cipher.ENCRYPT_MODE, key);
			final byte[] encryptedBytes = c.doFinal(text.getBytes());
			encryptedText = new BASE64Encoder().encode(encryptedBytes);
		} catch(final Exception e) {
			throw new DefaultWrappedException("PASSWORD_ENCRYPTION_EXCEPTION", e);
		}
		return encryptedText;
	}

	public String decrypt(final String text) throws DefaultWrappedException {
		String decryptedText = null;
		try {
			final Key key = this.generateKey();
			final Cipher c = Cipher.getInstance(ALGORITHM);
			c.init(Cipher.DECRYPT_MODE, key);
			final byte[] decryptedBytes = c.doFinal(new BASE64Decoder().decodeBuffer(text));
			decryptedText = new String(decryptedBytes);
		} catch(final Exception e) {
			throw new DefaultWrappedException("PASSWORD_DECRYPTION_EXCEPTION", e);
		}
		return decryptedText;
	}

	private Key generateKey() throws Exception {
		final byte[] keyAsBytes = this.passwordEncryptionKey.getBytes(UNICODE_FORMAT);
		return new SecretKeySpec(keyAsBytes, ALGORITHM);
	}
}