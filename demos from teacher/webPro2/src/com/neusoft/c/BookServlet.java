package com.neusoft.c;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator;

/**
 * Servlet implementation class BookServlet
 */
@WebServlet("/test/BookServlet")
public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("....BookServlet.....doGet..........");
//		String name=request.getParameter("name");
//		System.out.println("name="+name);
		HttpSession session=request.getSession();
		String jsessionid=session.getId();
		System.out.println("jessionid:"+jsessionid);
		String method=request.getParameter("method");
		if("findAll".equals(method)){
			findAll(request,response);
		}else if("add".equals(method)){
			add(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("...BookServlet....add.......");
		String name=request.getParameter("name");
		HttpSession session=request.getSession();
		List carList=null;
		if(session.getAttribute("carList")==null || session.getAttribute("carList")==""){
			carList=new ArrayList();
			carList.add(name);	
		}else{
			carList=(List)session.getAttribute("carList");
			carList.add(name);	
		}
		System.out.println("name="+name);
		
		session.setAttribute("carList", carList);
		System.out.println("添加购物车成功");
		findAll(request,response);
	}
	protected void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("...BookServlet....findAll.......");
		request.getRequestDispatcher("../showCar.jsp").forward(request, response);
	}

}
