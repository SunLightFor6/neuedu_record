<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言板</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bootstrap.css">
<script src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
</head>
<body>
<table class="table table-striped" align="center">
<c:forEach items="${messages}" var="message">
<thead>
<tr>
	<th>id:${message.id}</th>
	<th>${message.title}</th>
	<th>
	<form action="MessageHandler/delete?id=${message.id}" method="post">
		<button>删除</button>
	</form>
	</th>
</tr>
</thead>
<tbody>
<tr class="active" style="height: 40px">
	<td>${message.username}</td>
	<td>${message.context }</td>
	<td>${message.delivertime }</td>
</tr>
</tbody>
</c:forEach>
</table>
<c:choose>
<c:when test="${not empty messages}">
<ul class="pagination">
    <li><a href="#">&laquo;</a></li>
	<c:forEach begin="1" end="${pageCount }" var="pagenum">
    <li><a href="MessageHandler/showAll&page=${pagenum}&init=1">${pagenum}</a></li>
	</c:forEach>
    <li><a href="#">&raquo;</a></li>
</ul>
<hr>
</c:when>
</c:choose>
</body>
</html>