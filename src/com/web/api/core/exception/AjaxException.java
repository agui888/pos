package com.web.api.core.exception;

/**
 * Ajax Error
 * @author Tobin
 *
 */
public class AjaxException extends RuntimeException {

	private static final long serialVersionUID = 5797776185082675093L;

	public AjaxException() {
		super();
	}
	
	public AjaxException(String message) {
		super(message);
	}

	public AjaxException(String message, Throwable cause) {
		super(message, cause);
	}
	
	public AjaxException(Throwable cause) {
        super(cause);
    }
	
}
