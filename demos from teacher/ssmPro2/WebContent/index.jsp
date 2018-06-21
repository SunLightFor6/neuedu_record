<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">myBatis--ORMapping映射</h1>
<hr>
<h3>1.<a href="<%=request.getContextPath()%>/test/EmpHandler_findAll.action">查询Emp表 列出所有数据</a></h3>
<h3>2.<a href="<%=request.getContextPath()%>/test/EmpHandler_findAll2.action">查询EmpDept -- VO</a></h3>
<h3>3.<a href="<%=request.getContextPath()%>/test/EmpHandler_findAll3.action">查询EmpDept -- 多对一映射 -- 查询所有员工的部门信息</a></h3>
<h3>4.<a href="<%=request.getContextPath()%>/test/DeptHandler_findDeptEmps.action?deptno=20">查询DeptEmp -- 一对多映射 -- 查询一个部门下的所有员工信息</a></h3>
<h3>5.<a href="<%=request.getContextPath()%>/test/EmpHandler_findBetween.action">查询工资2500-5000之间的人的信息</a></h3>
<h3>6.<a href="<%=request.getContextPath()%>/test/EmpHandler_maxEmpsOfDept.action?deptno=20">查询每个部门下工资最高的人是谁</a></h3>
</body>
</html>