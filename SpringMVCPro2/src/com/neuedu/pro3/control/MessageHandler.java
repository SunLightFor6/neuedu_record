package com.neuedu.pro3.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.bean.Page;
import com.neuedu.pro3.service.MessageService;
import com.neuedu.pro3.service.PageService;

@Controller
public class MessageHandler {

	// @Resource(name="MessageService")
	@Autowired
	private MessageService messageService;

	// @Resource(name="PageService")
	@Autowired
	private PageService pageService;

	@RequestMapping(value = "/MessageHandler/delete")
	public String delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("----MessageHandler----delete()----");
		// ApplicationContext act = new
		// ClassPathXmlApplicationContext("spring.xml");
		// MessageService messageService = (MessageService)
		// act.getBean("MessageService");
		HttpSession session = request.getSession();
		int count = messageService.delete(Integer.parseInt(request.getParameter("id")));
		if (count > 0) {
			session.setAttribute("note", "ɾ���ɹ�");
		} else {
			session.setAttribute("note", "ɾ��ʧ��");
		}
		// request.getRequestDispatcher("MessageServlet?method=showAll").forward(request,
		// response);;
		return "forward:showAll?page=" + request.getParameter("page") + "&numPerPage=" + Page.getPageBean().getCountPerPage();
	}

	@RequestMapping(value = "/MessageHandler/showAll")
	public String showAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("----MessageHandler----showAll()----");
		// ApplicationContext act = new
		// ClassPathXmlApplicationContext("spring.xml");
		// PageService pageService = (PageService) act.getBean("PageService");
		HttpSession session = request.getSession();
		List<Object> messages = new ArrayList<Object>();
		String init = request.getParameter("init");
		int currentPage = -1;
		if (request.getParameter("page") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("page"));
		}
		
		int countPerPage = -1;
		String numPerPage = request.getParameter("numPerPage");
		if (!(numPerPage == "" || numPerPage == null)) {
			countPerPage = Integer.parseInt(numPerPage);
		} else {
			countPerPage = Page.getPageBean().getCountPerPage();
			if (countPerPage == -1) {
				countPerPage = 10;
			}
		}

		Page pageBean = pageService.getPageBean(countPerPage, currentPage);
		messages = pageBean.getResults();
		int pageCount = pageBean.getPageCount();
		session.setAttribute("pageBean", pageBean);
		if (messages.isEmpty() || messages == null) {
			session.setAttribute("note", "���԰�Ϊ��");
		} else if ("1".equals(init)) {
			session.setAttribute("note", "");
		}
		session.setAttribute("messages", messages);
		// request.getRequestDispatcher("index.jsp").forward(request, response);
		return "forward:/index.jsp";
	}

	@RequestMapping(value = "/MessageHandler/add")
	public String add(Message message, HttpSession session, HttpServletRequest request)
			throws ServletException, IOException {
		System.out.println("----MessageHandler----add()----");
		// ApplicationContext act = new
		// ClassPathXmlApplicationContext("spring.xml");
		// MessageService messageService = (MessageService)
		// act.getBean("MessageService");
		// HttpSession session = request.getSession();
		// Message message = new Message(
		// request.getParameter("username"),
		// request.getParameter("title"),
		// request.getParameter("context")
		// );
		message.setIp(this.getIpAddress(request));
		int count = messageService.add(message);
		if (count > 0) {
			session.setAttribute("note", "���Գɹ�");
		} else {
			session.setAttribute("note", "����ʧ��");
		}
		// request.getRequestDispatcher("MessageServlet?method=showAll").forward(request,
		// response);;
		return "forward:showAll";
	}

	/**
	 * ��ȡ�û���ʵIP��ַ����ʹ��request.getRemoteAddr();��ԭ�����п����û�ʹ���˴��������ʽ������ʵIP��ַ,
	 * ���ǣ����ͨ���˶༶�������Ļ���X-Forwarded-For��ֵ����ֹһ��������һ��IPֵ�������ĸ������������û��˵���ʵIP�أ�
	 * ����ȡX-Forwarded-For�е�һ����unknown����ЧIP�ַ�����
	 * 
	 * �磺X-Forwarded-For��192.168.1.110, 192.168.1.120, 192.168.1.130,
	 * 192.168.1.100
	 * 
	 * �û���ʵIPΪ�� 192.168.1.110
	 * 
	 * @param request
	 * @return
	 */
	public String getIpAddress(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_CLIENT_IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}

}
