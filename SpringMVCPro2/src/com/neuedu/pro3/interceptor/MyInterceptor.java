package com.neuedu.pro3.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class MyInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest req, HttpServletResponse resp, Object obj, Exception e)
			throws Exception {
		System.out.println("--- MyInterceptor --- afterCompletion() ---");

	}

	@Override
	public void postHandle(HttpServletRequest req, HttpServletResponse resp, Object obj, ModelAndView mav)
			throws Exception {
		System.out.println("--- MyInterceptor --- postHandle() ---");

	}

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object obj) throws Exception {
		System.out.println("--- MyInterceptor --- preHandle() ---");
		if (true) {
			return true;
		} else {
			
			return false;
		}
	}

}
