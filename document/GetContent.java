package com.web.api.core.aop;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetContent implements Filter {
	
    private HttpServletRequest request;
    
    private HttpServletResponse response;
    
    @Override
    public void destroy() {
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest servletRequest,ServletResponse servletResponse, FilterChain chain)
        throws ServletException, IOException {
        this.request = (HttpServletRequest) servletRequest;
        this.response = ((HttpServletResponse) servletResponse);
		SysContent.setRequest(request);
		SysContent.setResponse(response);
		try {
			chain.doFilter(SysContent.getRequest(), SysContent.getResponse());
		} catch(Exception e) {
			e.printStackTrace();
			throw e;
		}
    }

}
 