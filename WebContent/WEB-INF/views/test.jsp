<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
</head>
<body>
	<a href=save>首页哈222</a>
<div>
	<form action="" method="POST">
		<input type="hidden" name="_method" value="DELETE">
	</form>	
	<c:if test="${empty requestScope.users}">
		没有任何人的信息
	    </c:if>
	<table id="table2" class="table table-bordered table-hover">
		<thead>
		<c:if test="${!empty requestScope.users}">
			<tr>
				<th>用户名</th>
				<th>用户类型</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${requestScope.users}" var="users">
			<tr >
				<td>${users.userName}</td>
				<td>${users.type == 0? '系统管理员' : '会员用户'}</td>
				<td>
					<button class="btn btn-danger btn-sm" >删除</button>
				</td>
			</tr>
		</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<th>用户名</th>
				<th>手机号码</th>
				<th>用户类型</th>
				<th>操作</th>
			</tr>
		</tfoot>
		</c:if>
	 </table>
</div>
</body>
</html>