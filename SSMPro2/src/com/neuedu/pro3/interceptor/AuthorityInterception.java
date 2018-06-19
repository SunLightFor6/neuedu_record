package com.neuedu.pro3.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class AuthorityInterception implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest req, HttpServletResponse resp, Object obj, Exception e)
			throws Exception {
		System.out.println("--- AuthorityInterception -- afterCompletion() ---");
	}

	@Override
	public void postHandle(HttpServletRequest req, HttpServletResponse resp, Object obj, ModelAndView mav)
			throws Exception {
		System.out.println("--- AuthorityInterception -- postHandle() ---");

	}

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object obj) throws Exception {
		System.out.println("--- AuthorityInterception -- preHandle() ---");
		HttpSession session = req.getSession();
		boolean isLogin;
		try {
			isLogin = (boolean) session.getAttribute("isLogin");
		} catch (NullPointerException e) {
			isLogin = false;
			e.printStackTrace();
		}
		if (isLogin) {
			System.out.println("--- AuthorityInterception -- preHandle() --- success --continue");
			return true;
		} else {
			System.out.println("--- AuthorityInterception -- preHandle() ---fail --forward login.jsp");
			try {
				if(! session.getAttribute("note").equals("登录失败")) {
					session.setAttribute("note", "请先登录再进行操作");
				}
			} catch (NullPointerException e) {
				session.setAttribute("note", "请先登录再进行操作");
				System.out.println("请先登录再进行操作");
			}
			req.getRequestDispatcher("/login.jsp").forward(req, resp);
			return false;
		}
	}

}
