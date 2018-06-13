<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言板</title>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<!--<c:set value="10" var="numPerPage" scope="page"/> -->
<link rel="stylesheet" type="text/css" href="${path}/css/bootstrap.css">
<script src="${path}/js/jquery-3.2.1.min.js"></script>
<script src="${path}/js/bootstrap.js"></script>
</head>
<body>
<c:choose>
<c:when test="${not empty messages}">
<div class="dropdown" align="right">
    <button type="button" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">每页显示${pageBean.countPerPage }条记录
        <span class="caret"></span>
    </button>
    <ul class="dropdown-menu pull-right" style="overflow-y: scroll; height: 200px;" role="menu" aria-labelledby="dropdownMenu1">
        <c:forEach begin="1" end="200" var="i">
        <li role="presentation">
            <a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/MessageHandler/showAll?page=1&init=1&numPerPage=${i }">--${i }--</a>
        </li>
        </c:forEach>
    </ul>
</div>
<table class="table table-striped" align="center">
<colgroup>
    <col style="width: 11%">
    <col style>
    <col style="width: 16%">
</colgroup>
<c:forEach items="${messages}" var="message">
<thead>
<tr>
	<th>id:${message.id}</th>
	<th style="font-size: 16px">${message.title}</th>
	<th>
	<form action="${pageContext.request.contextPath}/MessageHandler/delete?id=${message.id}&page=${pageBean.currentPage }&numPerPage=${pageBean.countPerPage}" method="post">
		<button>删除</button>
	</form>
	</th>
</tr>
</thead>
<tbody>
<tr class="active" style="height: 60px">
	<td>${message.username}</td>
	<td style="margin: 5px; word-break:break-all; word-wrap:break-all;	">${message.context }</td>
	<td>${message.delivertime }</td>
</tr>
</tbody>
</c:forEach>
</table>
<ul class="pagination">
	<!-- 首页 -->
    <li><a href="${pageContext.request.contextPath}/MessageHandler/showAll?page=1&init=1&numPerPage=${pageBean.countPerPage }">&laquo;</a></li>
    <!-- 上一页 -->
    <c:choose>
    <c:when test="${pageBean.currentPage == 1 }">
   		<li class="disabled"><a><</a></li>
	</c:when>
	<c:otherwise>
	   	<li><a href="${pageContext.request.contextPath}/MessageHandler/showAll?page=${pageBean.currentPage==1?1:(pageBean.currentPage-1)}&init=1&numPerPage=${pageBean.countPerPage }"><</a></li>
	</c:otherwise>
	</c:choose>
	<!-- 中间的页码 -->
	<c:if test="${pageBean.pageBegin != -1 }">
	<c:forEach begin="${pageBean.pageBegin }" end="${pageBean.currentPage - 1 }" var="pagenum">
    	<li><a href="${pageContext.request.contextPath}/MessageHandler/showAll?page=${pagenum}&init=1&numPerPage=${pageBean.countPerPage }">${pagenum}</a></li>
	</c:forEach>
	</c:if>
	<!-- 当前页 -->
	<li class="active"><a>${pageBean.currentPage}</a></li>
	<!-- 当前页之后的页码 -->
	<c:if test="${pageBean.pageEnd != -1 }">
	<c:forEach begin="${pageBean.currentPage + 1 }" end="${pageBean.pageEnd }" var="pagenum">
   		<li><a href="${pageContext.request.contextPath}/MessageHandler/showAll?page=${pagenum}&init=1&numPerPage=${pageBean.countPerPage }">${pagenum}</a></li>
	</c:forEach>
	</c:if>
	<!-- 下一页 -->
	<c:choose>
    <c:when test="${pageBean.currentPage == pageBean.pageCount }">
   		<li class="disabled"><a>></a></li>
	</c:when>
	<c:otherwise>
		<li><a href="${pageContext.request.contextPath}/MessageHandler/showAll?page=${pageBean.currentPage+1}&init=1&numPerPage=${pageBean.countPerPage }">></a></li>
	</c:otherwise>
	</c:choose>
    <!-- 尾页 -->
    <li><a href="${pageContext.request.contextPath}/MessageHandler/showAll?page=${pageBean.pageCount }&init=1&numPerPage=${pageBean.countPerPage }">&raquo;</a></li>
</ul>
<hr>
</c:when>
</c:choose>
</body>
</html>