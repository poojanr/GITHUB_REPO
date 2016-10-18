package uk.gov.nhs.digital.ers.service.exception;

import com.dev.ops.exception.manager.impl.DefaultExceptionManager;
import com.dev.ops.exceptions.impl.DefaultWrappedException;

@SuppressWarnings("serial")
public class AuthenticationException extends DefaultWrappedException {

	private String exceptionId;

	public AuthenticationException() {
		super();
		this.exceptionId = null;
	}

	public AuthenticationException(final String exceptionId, final Throwable throwable, final Object[] messageParameters) {
		super(DefaultExceptionManager.getExceptionDescription(exceptionId, messageParameters), throwable);
		this.exceptionId = exceptionId;
	}

	public AuthenticationException(final String exceptionId, final Throwable throwable) {
		this(exceptionId, throwable, null);
	}

	public AuthenticationException(final Throwable throwable) {
		this(null, throwable);
	}

	public AuthenticationException(final String exceptionId) {
		this(exceptionId, null);
	}

	@Override
	public String getExceptionId() {
		return this.exceptionId;
	}
}
