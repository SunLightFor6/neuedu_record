package com.neuedu.pro1.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

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
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(".....MyServlet.....doGet().....");
		
		//��beans.xml Spring�����еõ�serviceʵ������  UserInfoService�ǽӿ�
		ApplicationContext ctx = new ClassPathXmlApplicationContext("beans.xml");
		UserInfoService service=(UserInfoService)ctx.getBean("UserInfoService3");
		
		//UserinfoService service=new UserinfoServiceBean();
		service.findAll();
		request.getRequestDispatcher("msg.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(".....MyServlet.....doPost().....");
		doGet(request, response);
	}

}