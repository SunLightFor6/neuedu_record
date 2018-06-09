package com.neuedu.pro3.control;

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

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.service.MessageService;

/**
 * Servlet implementation class MessageServlet
 */
@WebServlet("/MessageServlet")
public class MessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("----MssageServlet----doGet()----");
		String method = request.getParameter("method");
		if("add".equals(method)) {
			add(request, response);
		} else if ("showAll".equals(method)) {
			showAll(request, response);
		} else if ("delete".equals(method)) {
			delete(request, response);
		}
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("----MssageServlet----delete()----");
		ApplicationContext act = new ClassPathXmlApplicationContext("spring.xml");
		MessageService messageService = (MessageService) act.getBean("MessageService");
		HttpSession session = request.getSession();
		int count = messageService.delete(Integer.parseInt(request.getParameter("id")));
		if(count > 0) {
			session.setAttribute("note", "…æ≥˝≥…π¶");
		} else {
			session.setAttribute("note", "…æ≥˝ ß∞‹");
		}
		request.getRequestDispatcher("MessageServlet?method=showAll").forward(request, response);;
		return;
	}

	private void showAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("----MssageServlet----showAll()----");
		ApplicationContext act = new ClassPathXmlApplicationContext("spring.xml");
		MessageService messageService = (MessageService) act.getBean("MessageService");
		HttpSession session = request.getSession();
		List<Message> messages = new ArrayList<Message>();
		messages = messageService.listAll();
		if(messages.isEmpty() || messages == null) {
			session.setAttribute("note", "¡Ù—‘∞ÂŒ™ø’");
		} 
		session.setAttribute("messages", messages);
		request.getRequestDispatcher("index.jsp").forward(request, response);
		return;
	}

	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("----MssageServlet----add()----");
		ApplicationContext act = new ClassPathXmlApplicationContext("spring.xml");
		MessageService messageService = (MessageService) act.getBean("MessageService");
		HttpSession session = request.getSession();
		Message message = new Message(
				request.getParameter("username"),
				request.getParameter("title"),
				request.getParameter("context")
				);
		int count = messageService.add(message);
		if(count > 0) {
			session.setAttribute("note", "¡Ù—‘≥…π¶");
		} else {
			session.setAttribute("note", "¡Ù—‘ ß∞‹");
		}
		request.getRequestDispatcher("MessageServlet?method=showAll").forward(request, response);;
		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("----MssageServlet----doPost()----");
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
