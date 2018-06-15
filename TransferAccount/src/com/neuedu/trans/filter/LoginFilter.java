package com.neuedu.trans.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter("/LoginFilter")
public class LoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		System.out.println("--- LoginFilter -- destroy() ---");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// place your code here
		System.out.println("--- LoginFilter -- doFilter() ---");
		
		HttpSession session = ((HttpServletRequest)request).getSession();
		boolean isLogin = Boolean.parseBoolean(session.getAttribute("isLogin") + "");
		if(isLogin) {
		// pass the request along the filter chain
			System.out.println("--- LoginFilter -- doFilter() ---success");
			chain.doFilter(request, response);
		} else {
			System.out.println("--- LoginFilter -- doFilter() ---fail");
			request.setAttribute("message", "È¨ÏÞ²»×ã");
			request.getRequestDispatcher("/message.jsp").forward(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("--- LoginFilter -- init() ---");
	}

}
