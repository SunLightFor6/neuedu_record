<%@page import="com.neuedu.shopping.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cart</title>
<link rel="stylesheet" href="./style.css">
</head>
<body>
<body>
<br>
<hr>
<h1 align="center"> Book Store </h1>
<br>
<h3><a href="load">购买课本</a></h3>
<h3><a href="BookServlet?method=showAll">查看购物车</a></h3>
<hr>
<!-- 显示购物车中所有book -->
<% 	List<Book> books = (List<Book>) session.getAttribute("books"); 
	List<Integer> amount = (List<Integer>) session.getAttribute("amount");%>
<%
	if (books==null) {
		%>
		<div>
		<h3>购物车为空</h3>
		</div>
		<%
	} else {
		%>
		<%-- 一共几本书：<%=books.size() %> --%>
		<%
		int i = 0;
		for(Book book : books) {
			%>
			<h3>
			<span class="name">《<%=book.getName() %>》</span>
			<span class="price">￥<%=book.getPrice() %></span>
			<span class="amount">计<%=amount.get(i) %>本</span>
			<span class="cost">&nbsp;&nbsp;&nbsp;&nbsp;------价：<%=book.getPrice() * amount.get(i) %>元</span>
			</h3>
			<%
			i++;
		}
	}
%>
<h3>总价：<%
	double totalCost = 0;
	int i = 0;
	for(Book book : books) {
		totalCost += book.getPrice() * amount.get(i);
		i++;
	}
%><%=totalCost %></h3>
<hr>
<h4>jsessionid:<%=session.getId() %></h4>
</body>
</body>
</html>