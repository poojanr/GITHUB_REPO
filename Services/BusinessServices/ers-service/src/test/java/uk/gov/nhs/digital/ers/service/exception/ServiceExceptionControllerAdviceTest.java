/*
 *
 * Copyright (C) 2016 Krishna Kuntala @ Mastek <krishna.kuntala@mastek.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
package uk.gov.nhs.digital.ers.service.exception;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.context.request.WebRequest;

@RunWith(MockitoJUnitRunner.class)
public class ServiceExceptionControllerAdviceTest {

	private final ERSServiceExceptionControllerAdvice advice = new ERSServiceExceptionControllerAdvice();

	@Mock
	private MethodArgumentNotValidException mockedException;

	@Mock
	private BindingResult result;

	@Test
	public void testHandleAuthenticationException() {
		AuthenticationException exception = new AuthenticationException(new Exception());
		//Just for coverage instantiated the exception object twice with different constructors.
		exception = new AuthenticationException();
		final ResponseEntity<Object> responseEntity = this.advice.handleAuthenticationException(exception, Mockito.mock(WebRequest.class));
		Assert.assertNotNull(responseEntity);
		Assert.assertEquals("The error should be 401 Anauthorized", HttpStatus.UNAUTHORIZED, responseEntity.getStatusCode());
		Assert.assertNull("Exception message should be null", exception.getExceptionId());
	}
}
