package com.neuedu.pro1.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.neuedu.pro1.bean.UserInfo;
import com.neuedu.pro1.service.UserInfoService;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(".....MyServlet.....doGet().....");
		HttpSession session = req.getSession();
		//从beans.xml Spring容器中得到service实例对象  UserInfoService是接口
		ApplicationContext ctx = new ClassPathXmlApplicationContext("beans.xml");
		UserInfoService service=(UserInfoService)ctx.getBean("UserInfoService");
		String method = req.getParameter("method");
		if ("add".equals(method)) {
			add(req, resp);
		} else if ("listAll".equals(method)) {
			showAll(req, resp);
		} else {
			session.setAttribute("message", "method can't be called.");
		}
		//UserinfoService service=new UserinfoServiceBean();
//		service.findAll();
//		request.getRequestDispatcher("msg.jsp").forward(request, response);
	}

	private void showAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(".....MyServlet.....showAll().....");
		HttpSession session = req.getSession();
		//从beans.xml Spring容器中得到service实例对象  UserInfoService是接口
		ApplicationContext ctx = new ClassPathXmlApplicationContext("beans.xml");
		UserInfoService service=(UserInfoService)ctx.getBean("UserInfoService");
	
		List<UserInfo> userList = service.findAll();
		if(userList.isEmpty() || userList == null) {
			session.setAttribute("message", "The user list is empty.");
		} else {
			session.setAttribute("message", "The user list is shown as following.");
			session.setAttribute("userList", userList);
		}
		System.out.println("--message--" + session.getAttribute("message"));
		req.getRequestDispatcher("message.jsp").forward(req, resp);
		return ;
	}

	public void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(".....MyServlet.....add().....");
		HttpSession session = req.getSession();
		//从beans.xml Spring容器中得到service实例对象  UserInfoService是接口
		ApplicationContext ctx = new ClassPathXmlApplicationContext("beans.xml");
		UserInfoService service=(UserInfoService)ctx.getBean("UserInfoService");
		
		UserInfo user = new UserInfo();
		user.setId(Integer.parseInt((String) req.getParameter("id")));//获取name属性
		user.setName((String) req.getParameter("name"));
		user.setPassword((String) req.getParameter("password"));
		user.setBalance(Double.parseDouble((String) req.getParameter("balance")));
		user.setOther((String) req.getParameter("other"));
		
		boolean added = service.add(user);
		
		List<UserInfo> userList = new ArrayList<UserInfo>();
		userList.add(user);
		session.setAttribute("message", "User " + user.getName() + " added successfully");
		session.setAttribute("userList", userList);
		
		System.out.println("--message--" + session.getAttribute("message"));
		req.getRequestDispatcher("message.jsp").forward(req, resp);
		return ;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(".....MyServlet.....doPost().....");
		doGet(req, resp);
	}

}
