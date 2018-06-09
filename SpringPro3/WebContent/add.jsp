<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增留言</title>
</head>
<body>
<hr>
<h1 align="center">这是一个留言板</h1>
<hr>
<c:import url="note.jsp"></c:import> 
<h3><a href="add.jsp">新增留言</a></h3>
<h3><a href="MessageServlet?method=showAll">查看留言</a></h3>
<hr>
<form name="addform" action="MessageServlet?method=add" method="post">
	<input name="username" placeholder="用户名" ></input>
	<input name="title" placeholder="主题" ></input>
	<textarea name="context" placeholder="留言内容" ></textarea>
	<button type="submit">留言</button>
	<button type="reset">重置</button>
</form>
<hr>
</body>
</html>