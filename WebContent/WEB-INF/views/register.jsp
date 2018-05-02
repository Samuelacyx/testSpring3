<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>注册</title>
	<meta charset="UTF-8">
	<!-- Tell the browser to be responsive to screen width -->
  	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<title>注册</title>
	<% request.getSession().invalidate();%>
	<!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="js/jquery/bootstrap/css/bootstrap.min.css">
  	<!-- Font Awesome -->
  	<link rel="stylesheet" href="css/font-awesome.min.css">
  	<!-- Ionicons -->
  	<link rel="stylesheet" href="css/ionicons.min.css">
  	<!-- Theme style -->
  	<link rel="stylesheet" href="css/AdminLTE.min.css">
  	<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  	<link rel="stylesheet" href="css/skins/_all-skins.min.css">
  	<link rel="stylesheet" href="js/iCheck/square/blue.css">
  	
  	<style type="text/css">
  		.register{
  			background-image: url("img/photo4.jpg");
  		}
  	</style>
</head>
<body class="hold-transition register">
	<div class="register-box" id="register">
		<div class="register-logo">
		    <a href="#"><b>校园二手商品交易网站</b></a>
		</div>
		
		<div class="register-box-body">
		<p class="login-box-msg">注册一个新账户</p>
			<form:form modelAttribute="users" action="registerUser" method="POST" >
				<div class="form-group has-feedback">
					<form:input path="userName" class="form-control" placeholder="username"/>
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<form:password path="password" class="form-control" placeholder="password"/>
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<form:password path="repassword" class="form-control" placeholder="repassword"/>
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label>
			              		<p>已确认信息，点此注册>>></p>
							</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-4">
						<input type="submit" value="注册" />
					</div>
				</div>
			</form:form>
			<a href="login" class="text-center">已有账户？点此登录</a>
		</div>
	</div>
		<script src="js/jquery/jquery.min.js"></script>
		<script src="js/vue/vue.min.js"></script>
		<script src="js/jquery/bootstrap/js/bootstrap.min.js"></script>
		<script src="js/iCheck/icheck.min.js"></script>
		<!-- <script src="js/adminlte.min.js"></script> -->
		<script>
		$(function () {
			$('input').iCheck({
				checkboxClass: 'icheckbox_square-blue',
				radioClass: 'iradio_square-blue',
				increaseArea: '20%' /* optional */
			});
		});
		
		</script>
</body>
</html>