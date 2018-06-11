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
	<form action="${pageContext.request.contextPath}/MessageHandler/delete?id=${message.id}" method="post">
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
    <li><a href="${pageContext.request.contextPath}/MessageHandler/showAll?page=1&init=1">&laquo;</a></li>
    <li><a href="${pageContext.request.contextPath}/MessageHandler/showAll?page=${pageBean.currentPage==1?1:(pageBean.currentPage-1)}&init=1"><</a></li>
	
	<c:if test="${pageBean.pageBegin != -1 }">
	<c:forEach begin="${pageBean.pageBegin }" end="${pageBean.currentPage - 1 }" var="pagenum">
    	<li><a href="${pageContext.request.contextPath}/MessageHandler/showAll?page=${pagenum}&init=1">${pagenum}</a></li>
	</c:forEach>
	</c:if>
	<li class="active"><a href="${pageContext.request.contextPath}/MessageHandler/showAll?page=${pageBean.currentPage }&init=1">${pageBean.currentPage}</a></li>
	<c:if test="${pageBean.pageEnd != -1 }">
	<c:forEach begin="${pageBean.currentPage + 1 }" end="${pageBean.pageEnd }" var="pagenum">
   		<li><a href="${pageContext.request.contextPath}/MessageHandler/showAll?page=${pagenum}&init=1">${pagenum}</a></li>
	</c:forEach>
	</c:if>
	<li><a href="${pageContext.request.contextPath}/MessageHandler/showAll?page=${pageBean.currentPage==pageBean.pageCount?pageBean.pageCount:(pageBean.currentPage+1)}&init=1">></a></li>
    <li><a href="${pageContext.request.contextPath}/MessageHandler/showAll?page=${pageBean.pageCount }&init=1">&raquo;</a></li>
</ul>
<hr>
</c:when>
</c:choose>
</body>
</html>