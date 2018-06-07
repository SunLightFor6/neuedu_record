package com.neuedu.shopping;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet{

	/**
	 * �����������Ķ�Ӧ
	 */
	Map<String, Integer> cart = new HashMap<>();
	HttpSession session;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		System.out.println("BookServlet--doGet�����ڲ�");
		BookService bookservice = new BookService();
		session = req.getSession();
		String method = (String) req.getParameter("method");
//		System.out.println(method);
		if (method.equals("buy")) {
//			String name = (String) req.getParameter("name");
//			System.out.println("--buy--" + name);
//			if(cart.containsKey(name)) {
//				System.out.println("contains " + name + " in " + cart.size());
//				int amount = cart.get(name);
//				cart.put(name, amount+1);
//				System.out.println("-- " + cart.size());
//			} else {
//				System.out.println("not contained in " + cart.size());
//				cart.put(name, 1);
//				System.out.println("-- " + cart.size());
//			}
			buy(req, resp);
			System.out.println("resp.sendRedirect(BookServlet?method=showAll);");
			showAll(req, resp);
			//resp.sendRedirect("BookServlet?method=showAll");
			//������sendRedirect  Ӧ��ֱ�ӵ���showAll����
		} else if(method.equals("showAll")) {
			showAll(req, resp);
		} else {
			
		}
	}

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}

	public void buy(HttpServletRequest req, HttpServletResponse resp) {
		String name = (String) req.getParameter("name");
		System.out.println("BookServlet--buy�����ڲ�");
		if(cart.containsKey(name)) {
//			System.out.println("contains " + name + " in " + cart.size());
			int amount = cart.get(name);
			cart.put(name, amount+1);
//			System.out.println("-- " + cart.size());
		} else {
//			System.out.println("not contained in " + cart.size());
			cart.put(name, 1);
//			System.out.println("-- " + cart.size());
		}
		System.out.println("buy " + name);
	}
	
	public void showAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("BookServlet--showAll�����ڲ�");
		List<Book> cartList = new ArrayList<Book>();
		List<Integer> amount = new ArrayList<Integer>();
//		if (session.getAttribute("books") != null) {
//			cartList = (List<Book>) session.getAttribute("books");
//			amount = (List<Integer>) session.getAttribute("amount");
//		} 
		//TODO  session����û���
		//����map
		Iterator keyValuePairs = cart.entrySet().iterator();
		System.out.println("--in showAll size " + cart.size());
		while (keyValuePairs.hasNext())
		{
			System.out.println("cartList " + cartList.size());
			Map.Entry entry = (Map.Entry) keyValuePairs.next();
			cartList.add(new BookService().getByName((String) entry.getKey()));
			amount.add((Integer) entry.getValue());
			System.out.println("cartList ADD " + (String) entry.getKey() + " " + cartList.size());
		}
		session.setAttribute("books", cartList);
		session.setAttribute("amount", amount);
		System.out.println("books " + cartList.size() + "  amount " + amount.size() + "\n---����ת��");
		//resp.sendRedirect("cart.jsp");
		req.getRequestDispatcher("cart.jsp").forward(req, resp);
	}
	
}