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
<link rel="stylesheet" type="text/css" href="${path}/css/style.css">
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
			<div class="col-lg-5">
				<form name="queryform" class="form-horizontal" action="${path}/PageHandler/query" method="post">
					<div class="form-inline form-group">
						<label>用户id所在区间：</label><br>
						<label>[</label>
						<input name="gtid" class="form-control" placeholder="可不填" />
						<label>,&nbsp;</label>
						<input name="ltid" class="form-control" placeholder="可不填" />
						<label>]</label>
					</div>
					<div class="form-inline form-group" style="display: flex;">
						<label>或者，用户id是：</label>
						<input name="id" class="form-control" style="width: 80%" placeholder="用户id" />
					</div>
					<div class="form-inline form-group" style="display: flex;">
						<label>或者，用户名是：</label>
						<input name="username" class="form-control" style="width: 80%" placeholder="用户名" />
					</div>
					<div class="form-inline form-group" style="display: flex;">
						<label>或者，留言标题可能包含：</label>
						<input name="title" class="form-control" style="width: 80%" placeholder="留言标题" />
					</div>
					<div class="form-inline form-group" style="display: flex;">
						<label>或者，留言内容可能包含：</label>
						<input name="context" class="form-control" style="width: 80%" placeholder="留言内容" />
					</div>
					<div class="form-inline form-group" style="display: flex;">
						<label>发表时间早于</label>
						<input name="gt_delivertime" class="form-control" style="width: 80%" placeholder="格式yyyymmdd" />
					</div>
					<div class="form-inline form-group" style="display: flex;">
						<label>或者晚于</label>
						<input name="lt_delivertime" class="form-control" style="width: 80%" placeholder="格式yyyymmdd" />
					</div>
					<div class="form-inline form-group" style="display: flex;">
						<label>亦或者某一天：</label>
						<input name="delivertime" class="form-control" style="width: 80%" placeholder="格式yyyymmdd" />
					</div>
					<div class="form-inline form-group" style="display: flex;">
						<label>来自ip：</label>
						<input name="ip" class="form-control" style="width: 60%" placeholder="请填写标准ip地址" />
					</div>
					<div class="form-group">
						<div class="col-sm-offset-1 col-sm-10">
						<button class="btn btn-primary btn-block" type="submit">提交</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="row">
			<hr>
		</div>
	</div>
</body>
</html>