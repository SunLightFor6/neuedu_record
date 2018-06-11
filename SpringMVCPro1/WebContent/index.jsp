<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>留言板</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bootstrap.css">
<script src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
</head>
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
<h4><a href="add.jsp">新增留言</a></h3>
<h4><a href="MessageHandler/showAll?init=1">查看留言</a></h3>
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