<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
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
			<h1 align="center">这是一个留言板</h1>
			<hr>
			<h4>查询留言</h4>
		</div>
		<div class="row">
			<div class="col-lg-4"></div>
			<div class="col-lg-4" class="form-horizontal">
				<form name="queryform" class="form-group" action="${path}/PageHandler/query" method="post">
					
				</form>
			</div>
		</div>
		<div class="row">
			<hr>
		</div>
	</div>
</body>
</html>