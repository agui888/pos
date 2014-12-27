package com.web.api.core.exception;

/**
 * Exists Error
 * @author Tobin
 *
 */
public class ExistsException extends RuntimeException {

	private static final long serialVersionUID = -2093412203415610208L;

	public ExistsException() {
		super();
	}
	
	public ExistsException(String message) {
		super(message);
	}

	public ExistsException(String message, Throwable cause) {
		super(message, cause);
	}
	
	public ExistsException(Throwable cause) {
        super(cause);
    }
	
}
