<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@page import="com.cyx.entity.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">

<title>用户管理</title>
<%@ include file="tpl/header.jsp"%>
<%@ include file="link.jsp"%>
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<div>
		<section class="content">
		    <div class="row">
		    	<div class="col-xs-12">
			    	<div class="panel panel-default" style="position:absolute;top:20px;left:250px;width:800px;border:1px solid #ccc;">
			    		<div class="panel-heading">
			    			<h3 class="panel-title">用户管理
			    			</h3>
			    		</div>
			    		<div class="panel-body">
			    			<div>
			    				<table id="table2" class="table table-bordered table-hover" >
					                <thead>
					                <tr>
					                  <th>用户名</th>
					                  <th>用户类型</th>
					                  <th>操作</th>
					                  <th>资料</th>
					                </tr>
					                </thead>
										<c:forEach items="${requestScope.users}" var="users">
											<tr >
												<td>${users.userName}</td>
												<td>${users.type == 0? '系统管理员' : '会员用户'}</td>
												<td>
												<!-- 删除的提交方式 -->
												<form action="userDelete/${users.userName}" method="POST">
													<input type="submit" value="删除" class="btn btn-danger btn-sm">
												</form>
												</td>
												<td>
													<a class="btn btn-danger btn-sm" href="userInfoList_${users.userId}">资料</a>
												</td>
											</tr>
										</c:forEach>
										</tbody>
					                <tfoot>
					                <tr>
					                  <th>用户名</th>
					                  <th>用户类型</th>
					                  <th>操作</th>
					                </tr>
					                </tfoot>
					             </table>
			    			</div>
			    		</div>
			    	</div>
			    </div>
		    </div>
		</section>
	</div>

</body>

</html>