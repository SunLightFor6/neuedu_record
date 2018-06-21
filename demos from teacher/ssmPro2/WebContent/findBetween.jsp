<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">myBatis--ORMapping映射--多对一的映射关系</h1>
<h1 align="center">myBatis--查询工资2500-5000之间的人的信息</h1>
<hr>
<c:forEach items="${betweenEmps }" var="e">
<h4>empno:${e.empno }</h4>
<h4>ename:${e.ename }</h4>
<h4>msgr:${e.mgr }</h4>
<h4>deptno:${e.deptno }</h4>
<hr>
</c:forEach>
</body>
</html>