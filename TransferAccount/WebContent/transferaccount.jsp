<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>transfer account</title>
</head>
<body>
<h1 align="center">给我转账！！！</h1>
<hr>
<form name="transform" action="servlet/UserInfoServlet?method=transferaccount" method="post">
转出自账号A:<input type="text" name="fromname"/><br><br>
转入到账号B:<input type="text" name="toname" value=<%=session.getAttribute("name")%> /><br><br>
转账金额:￥<input type="text" name="num"/><br><br>
<hr>
<input type="submit" name="submit" value="转账"/><br><br>
</form>
</body>
</html>