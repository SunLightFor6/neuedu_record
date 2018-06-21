<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>留言板</title>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<link rel="stylesheet" type="text/css" href="${path}/css/bootstrap.css">
<script src="${path}/js/jquery-3.2.1.min.js"></script>
<script src="${path}/js/bootstrap.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<hr>
			<h1 align="center">这是一个留言板啊</h1>
			<hr>
		</div>
		<div class="row">
			<c:import url="note.jsp"></c:import>
		</div>
		<div class="row">
			<div class="col-lg-2"></div>
			<div class="col-lg-8">
				<c:choose>
					<c:when test="${sessionScope.isLogin == true }">
						<h4>Welcome ${username } !</h4>
					</c:when>
					<c:otherwise>
						<h4>
							<a href="${path }/login.jsp">登录</a>
						</h4>
					</c:otherwise>
				</c:choose>
				<h4>
					<a href="${path }/add.jsp">新增留言</a>
				</h4>
				<h4>
					<a href="${path }/MessageHandler/showAll?init=1">查看留言</a>
				</h4>
				<h4>
					<a href="${path }/query.jsp">查询留言</a>
				</h4>
			</div>
		</div>
		<div class="row">
			<hr>
		</div>
		<div class="row">
			<div class="col-lg-2"></div>
			<div class="col-lg-8">
				<c:import url="showAll.jsp"></c:import>
			</div>
		</div>
	</div>
</body>
</html>