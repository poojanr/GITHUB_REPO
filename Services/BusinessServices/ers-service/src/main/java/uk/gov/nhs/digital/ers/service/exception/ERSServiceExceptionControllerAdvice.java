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

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.dev.ops.common.service.exception.ExceptionUtil;
import com.dev.ops.common.service.exception.ServiceExceptionControllerAdvice;

@ControllerAdvice
@EnableWebMvc
public class ERSServiceExceptionControllerAdvice extends ServiceExceptionControllerAdvice {

	@ExceptionHandler(AuthenticationException.class)
	protected ResponseEntity<Object> handleAuthenticationException(final AuthenticationException ex, final WebRequest request) {
		final Exception wrappedException = ExceptionUtil.createException(ex.getMessage(), ex, null);
		return this.handleExceptionInternal(wrappedException, wrappedException.getMessage(), new HttpHeaders(), HttpStatus.UNAUTHORIZED, request);
	}
}