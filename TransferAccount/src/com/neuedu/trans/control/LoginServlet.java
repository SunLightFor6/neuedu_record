package com.neuedu.trans.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.neuedu.trans.service.UserInfoService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("--- LoginServlet -- doGet() ---");
		login(req, resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("--- LoginServlet -- doPost() ---");
		doGet(request, response);
	}

	public void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("--- LoginServlet -- login() ---");
		String name = req.getParameter("username");
		String password = req.getParameter("password");
		req.getSession().setAttribute("name", name);
		UserInfoService service = new UserInfoService();
		boolean loginSuccessfully = service.isLoginSuccessfully(name, password);
		HttpSession session = req.getSession();
		session.setMaxInactiveInterval(1800);//ÉúÃüÖÜÆÚ
		if(loginSuccessfully) {
			System.out.println(name + " µÇÂ¼³É¹¦£¡");
			req.setAttribute("message", "µÇÂ¼³É¹¦£¡");
			session.setAttribute("isLogin", true);
			req.getRequestDispatcher("../message.jsp").forward(req, resp);
			return;
		} else {
			System.out.println(name + " µÇÂ¼Ê§°Ü£¡");
			req.setAttribute("message", "µÇÂ¼Ê§°Ü£¡");
			session.setAttribute("isLogin", false);
			req.getRequestDispatcher("../index.jsp").forward(req, resp);
			return;
		}		
	}
}
