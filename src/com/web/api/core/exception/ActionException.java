package com.web.api.core.exception;

/**
 * Action Error
 * @author Tobin
 *
 */
public class ActionException extends RuntimeException {

	private static final long serialVersionUID = 5797776185082675093L;

	public ActionException() {
		super();
	}
	
	public ActionException(String message) {
		super(message);
	}

	public ActionException(String message, Throwable cause) {
		super(message, cause);
	}
	
	public ActionException(Throwable cause) {
        super(cause);
    }
	
}
