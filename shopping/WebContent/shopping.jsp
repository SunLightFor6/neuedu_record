<%@page import="com.neuedu.shopping.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
<link rel="stylesheet" href="./style.css">
</head>
<body>
<br>
<hr>
<h1 align="center"> Book Store </h1>
<br>
<h3><a href="load">购买课本</a></h3>
<h3><a href="BookServlet?method=showAll">查看购物车</a></h3>
<hr>
<!-- 显示所有book -->
<% 	List<Book> books = (List<Book>) session.getAttribute("booklist"); %>
<%
	for(Book book : books) {
		%>
		<h3>
		<a href="BookServlet?method=buy&name=<%=book.getName() %>">《<%=book.getName() %>》</a>
		<span class="price">￥<%=book.getPrice() %></span>
		</h3>
		<%
	}
%>
<hr>
<h4>jsessionid:<%=session.getId() %></h4>
</body>
</html>