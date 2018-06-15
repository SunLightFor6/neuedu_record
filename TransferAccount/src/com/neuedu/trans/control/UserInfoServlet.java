package com.neuedu.trans.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.neuedu.trans.service.UserInfoService;

@WebServlet("/servlet/UserInfoServlet")
public class UserInfoServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String method = (String) req.getParameter("method");
		if("login".equals(method)) {
			login(req, resp);
		} else if ("transferaccount".equals(method)){
			transferaccount(req, resp);
		}
	}

	public void transferaccount(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("--Servlet -- doGet() --> transferaccount()");
		String fromname = req.getParameter("fromname");
		String toname = req.getParameter("toname");
		double num = Double.parseDouble(req.getParameter("num"));
		UserInfoService service = new UserInfoService();
		if(num <= 0) {
			System.out.println("转账失败");
			req.setAttribute("message", "转账金额不能为负数！");
		} else {
			int result = service.transferAccount(fromname, toname, num);
			if (result == 1) {
				System.out.println("转账成功");
				req.setAttribute("message", "转账成功！");
			} else if (result == -1) {
				System.out.println("转账失败，由于from用户不存在 ： " + fromname);
				req.setAttribute("message", "转账失败，由于用户 " + fromname + " 不存在 ");
			} else if (result == -2) {
				System.out.println("转账失败，由于to用户不存在 ： " + toname);
				req.setAttribute("message", "转账失败，由于用户 " + toname + " 不存在 ");
			} else if (result == -3) {
				System.out.println("转账失败，用户 " + fromname + " 余额不足");
				req.setAttribute("message", "转账失败，用户 " + fromname + " 余额不足");
			} else if (result == 0) {
				System.out.println("转账失败");
				req.setAttribute("message", "转账成功！");
			} else {
				System.out.println("返回值非规定值：" + result);
				req.setAttribute("message", "返回值非规定值：" + result);
			}
		}
		req.getRequestDispatcher("../message.jsp").forward(req, resp);
		return;//?? 4 
		//tomcat cannot forward after response has been committed
		/*
		 * When you 'forward' or 'include', the same request and response 
		 * is passed to that resource. If you close the output stream, it 
		 * cannot be used by the JSP to return the data. As soon as any data 
		 * gets written to the client, the response is already committed
		 */
		
	}

	public void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("--Servlet -- doGet() --> login()");
		String name = req.getParameter("username");
		String password = req.getParameter("password");
		req.getSession().setAttribute("name", name);
		UserInfoService service = new UserInfoService();
		boolean loginSuccessfully = service.isLoginSuccessfully(name, password);
		if(loginSuccessfully) {
			System.out.println(name + " 登录成功！");
			req.setAttribute("message", "登录成功！");
			req.getRequestDispatcher("../message.jsp").forward(req, resp);
			return;
		} else {
			System.out.println(name + " 登录失败！");
			req.setAttribute("message", "登录失败！");
			req.getRequestDispatcher("../index.jsp").forward(req, resp);
			return;
		}		
	}

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		req.setCharacterEncoding("utf-8");//设置请求编码
		doGet(req, resp);
	}

	
}
