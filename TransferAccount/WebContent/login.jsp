<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
<h1 align="center">给我转账！！！</h1>
<hr>
<form name="loginform" action="servlet/UserInfoServlet?method=login" method="post">
	账号: <input type="text" name="username" />
	<br>
	密码: <input type="password" name="password" />
	<br>
	<input type="submit" name="submit" value="登录" />
	<input type="reset" name="reset" value="重置" />
</form>
</body>
</html>