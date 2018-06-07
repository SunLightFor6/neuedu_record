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
<h1 align="center">书店</h1>

<h3><a href="shopping.jsp">1.购买商品</h3>
<h3><a href="test/BookServlet?name=java">2.查看购物车</h3>
<hr>
<h3><a href="test/BookServlet;jsessionid=<%=session.getId() %>?method=add&name=java">1.java</h3>
<h3><a href="test/BookServlet?method=add&name=Jsp">2.Jsp</h3>
<h3><a href="test/BookServlet?method=add&name=Oracle">3.Oracle</h3>
<h3><a href="test/BookServlet?method=add&name=Spring">4.Spring</h3>
<h3><a href="test/BookServlet?method=add&name=SpringMVC">5.SpringMVC</h3>

</body>
</html>