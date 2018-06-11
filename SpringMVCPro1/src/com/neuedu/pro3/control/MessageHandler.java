package com.neuedu.pro3.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.bean.Page;
import com.neuedu.pro3.service.MessageService;
import com.neuedu.pro3.service.PageService;

@Controller
public class MessageHandler {
	
	@Resource(name="MessageService")
	private MessageService messageService;
	
	@Resource(name="PageService")
	private PageService pageService;
	
	@RequestMapping(value="/MessageHandler/delete")
	private String delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("----MessageHandler----delete()----");
//		ApplicationContext act = new ClassPathXmlApplicationContext("spring.xml");
//		MessageService messageService = (MessageService) act.getBean("MessageService");
		HttpSession session = request.getSession();
		int count = messageService.delete(Integer.parseInt(request.getParameter("id")));
		if(count > 0) {
			session.setAttribute("note", "…æ≥˝≥…π¶");
		} else {
			session.setAttribute("note", "…æ≥˝ ß∞‹");
		}
//		request.getRequestDispatcher("MessageServlet?method=showAll").forward(request, response);;
		return "forward:showAll";
	}
	
	@RequestMapping(value="/MessageHandler/showAll")
	private String showAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("----MessageHandler----showAll()----");
//		ApplicationContext act = new ClassPathXmlApplicationContext("spring.xml");
//		PageService pageService = (PageService) act.getBean("PageService");
		HttpSession session = request.getSession();
		List<Message> messages = new ArrayList<Message>();
		String init = request.getParameter("init");
		int currentPage = -1;
		if(request.getParameter("page") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("page"));
		}
		int countPerPage = 10;
		Page pageBean = pageService.getPageBean(countPerPage, currentPage);
		messages = pageBean.getResults();
		int pageCount = pageBean.getPageCount();
		session.setAttribute("pageCount", pageCount);
		if(messages.isEmpty() || messages == null) {
			session.setAttribute("note", "¡Ù—‘∞ÂŒ™ø’");
		} else if ("1".equals(init)) {
			session.setAttribute("note", "");
		}
		session.setAttribute("messages", messages);
//		request.getRequestDispatcher("index.jsp").forward(request, response);
		return "forward:index.jsp";
	}
	
	@RequestMapping(value="/MessageHandler/add")
	private String add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("----MessageHandler----add()----");
//		ApplicationContext act = new ClassPathXmlApplicationContext("spring.xml");
//		MessageService messageService = (MessageService) act.getBean("MessageService");
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
//		request.getRequestDispatcher("MessageServlet?method=showAll").forward(request, response);;
		return "forward:showAll";
	}
	
}
