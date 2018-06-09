<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.neuedu.pro1.bean.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>Message</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
<hr>
<h1 align="center">Spring INDEX - message page</h1>
<hr>
<br><br>
<h3 align="center"><a href="add.jsp">add a new user</a></h4>
<h3 align="center"><a href="MyServlet?method=listAll">list all the users</a></h4>
<hr>
<h3><%=session.getAttribute("message") %></h3>
<% 
	List<UserInfo> userList = (List<UserInfo>) session.getAttribute("userList");
	if(userList.isEmpty() || userList == null) {
		;
	} else {
		Iterator it = userList.iterator();
%>
<table>
<%
		while(it.hasNext()){
			UserInfo user = (UserInfo) it.next();
%>
	<tr>
	<td><%=user.getId() %></td>
	<td><%=user.getName() %></td>
	<td><%=user.getPassword() %></td>
	<td><%=user.getBalance() %></td>
	<td><%=user.getOther() %></td>
	</tr>
<%		}
	}
%>
</table>
</body>
</html>