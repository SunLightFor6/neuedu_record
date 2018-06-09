<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言板</title>
</head>
<body>
<table align="center">
<c:forEach items="${messages}" var="message">
<tr>
	<td>id:${message.id}</td>
	<td><h3>${message.title}</h3></td>
	<td>
	<form action="MessageServlet?method=delete&id=${message.id}" method="post">
		<button>删除</button>
	</form>
	</td>
</tr>
<tr>
	<td>${message.username}</td>
	<td>${message.context }</td>
	<td>${message.delivertime }</td>
</tr>
</c:forEach>
</table>
<hr>
</body>
</html>