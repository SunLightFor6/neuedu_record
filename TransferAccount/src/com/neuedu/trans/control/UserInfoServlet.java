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
			System.out.println("ת��ʧ��");
			req.setAttribute("message", "ת�˽���Ϊ������");
		} else {
			int result = service.transferAccount(fromname, toname, num);
			if (result == 1) {
				System.out.println("ת�˳ɹ�");
				req.setAttribute("message", "ת�˳ɹ���");
			} else if (result == -1) {
				System.out.println("ת��ʧ�ܣ�����from�û������� �� " + fromname);
				req.setAttribute("message", "ת��ʧ�ܣ������û� " + fromname + " ������ ");
			} else if (result == -2) {
				System.out.println("ת��ʧ�ܣ�����to�û������� �� " + toname);
				req.setAttribute("message", "ת��ʧ�ܣ������û� " + toname + " ������ ");
			} else if (result == -3) {
				System.out.println("ת��ʧ�ܣ��û� " + fromname + " ����");
				req.setAttribute("message", "ת��ʧ�ܣ��û� " + fromname + " ����");
			} else if (result == 0) {
				System.out.println("ת��ʧ��");
				req.setAttribute("message", "ת�˳ɹ���");
			} else {
				System.out.println("����ֵ�ǹ涨ֵ��" + result);
				req.setAttribute("message", "����ֵ�ǹ涨ֵ��" + result);
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
			System.out.println(name + " ��¼�ɹ���");
			req.setAttribute("message", "��¼�ɹ���");
			req.getRequestDispatcher("../message.jsp").forward(req, resp);
			return;
		} else {
			System.out.println(name + " ��¼ʧ�ܣ�");
			req.setAttribute("message", "��¼ʧ�ܣ�");
			req.getRequestDispatcher("../index.jsp").forward(req, resp);
			return;
		}		
	}

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");//�����������
		doGet(req, resp);
	}

	
}