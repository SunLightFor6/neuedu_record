<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>留言板</title>
</head>
<body>
<hr>
<h1 align="center">这是一个留言板</h1>
<hr>
<c:import url="note.jsp"></c:import> 
<h3><a href="add.jsp">新增留言</a></h3>
<h3><a href="MessageServlet?method=showAll">查看留言</a></h3>
<hr>
<c:import url="showAll.jsp"></c:import> 
</body>
</html>