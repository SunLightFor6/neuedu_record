<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增留言</title>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<link rel="stylesheet" type="text/css" href="${path}/css/bootstrap.css">
<script src="${path}/js/jquery-3.2.1.min.js"></script>
<script src="${path}/js/bootstrap.js"></script>
<body>
<div class="container">
<div class="row">
<hr>
<h1 align="center">这是一个留言板</h1>
<hr>
</div>
<div class="row">
<c:import url="note.jsp"></c:import>
</div>
<div class="row"> 
<div class="col-lg-2"></div>
<div class="col-lg-8">
<h4><a href="${pageContext.request.contextPath}/add.jsp">新增留言</a></h3>
<h4><a href="${pageContext.request.contextPath}/MessageHandler/showAll">查看留言</a></h3>
</div>
</div>
<div class="row">
<hr>
</div>
<div class="row">
<div class="col-lg-2"></div>
<div class="col-lg-8" class="form-horizontal">
<form class="form-group" name="addform" action="${pageContext.request.contextPath}/MessageHandler/add" method="post">
	<input class="form-control" style="margin: 15px" name="username" placeholder="用户名" ></input>
	<input class="form-control" style="margin: 15px" name="title" placeholder="主题" ></input>
	<textarea class="form-control" style="margin: 15px" name="context" placeholder="留言内容" ></textarea>
	<button class="btn btn-success" style="margin: 10px" type="submit">留言</button>
	<button class="btn btn-primary" style="margin: 10px" type="reset">重置</button>
</form>
</div>
</div>
<div class="row">
<hr>
</div>
</body>
</html>