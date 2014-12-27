package com.web.api.core.exception;

/**
 * Service Error
 * @author Tobin
 *
 */
public class ServiceException extends RuntimeException {

	private static final long serialVersionUID = -1091412203415610202L;

	public ServiceException() {
		super();
	}
	
	public ServiceException(String message) {
		super(message);
	}

	public ServiceException(String message, Throwable cause) {
		super(message, cause);
	}
	
	public ServiceException(Throwable cause) {
        super(cause);
    }
	
}
