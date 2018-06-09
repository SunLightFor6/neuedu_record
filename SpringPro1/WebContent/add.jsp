<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
<h1 align="center">Spring INDEX - add page</h1>
<hr>
<br><br>
<h3 align="center"><a href="add.jsp">add a new user</a></h4>
<h3 align="center"><a href="MyServlet?method=listAll">list all the users</a></h4>
<hr>
<h3>Input information of the user:</h3>
<form id="addform" action="MyServlet?method=add" method="post">
id:<input type="text" id="id" name="id" />
name:<input type="text" id="name" name="name" />
password:<input type="text" id="password" name="password" />
balance:<input type="text" id="balance" name="balance" />
other:<input type="text" id="other" name="other" />
<button type="submit">submit</button>
<button type="reset">reset</button>
</form>

</body>
</html>