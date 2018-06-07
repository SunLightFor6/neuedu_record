<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<hr>
<h3>jsessionid:<%=session.getId() %></h3>
<hr>
<h1 align="center">查看购物车</h1>

<h3><a href="shopping.jsp">1.购买商品</h3>
<h3><a href="test/BookServlet?method=findAll">2.查看购物车</h3>
<hr>
<%
	if(session.getAttribute("carList")==null){
		out.print("<h1>空购物车</h1>");
	}else{
		List<String> list=(List)session.getAttribute("carList");
		for(String name:list){
			%>
			<h3><%=name %></h3>
			<%
		}	
	}
%>
</body>
</html>