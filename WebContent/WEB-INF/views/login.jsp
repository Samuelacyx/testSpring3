<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
	<meta charset="UTF-8">
	<!-- Tell the browser to be responsive to screen width -->
  	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<title>login</title>
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
  		.login{
  			background-image: url("img/photo4.jpg");
  		}
  	</style>
</head>
<body>

	<body class="hold-transition login">

	<div class="login-box" id="login">
		<div class="login-logo">
			<a href="#"><b>校园二手商品交易网站</b></a>
		</div>
	  <!-- /.login-logo -->
		<div class="login-box-body">
	    	<p class="login-box-msg">登录你的账户</p>
	
			<form:form modelAttribute="user" action="loginUser" method="POST" >
				<div class="form-group has-feedback">
					<form:input path="userName" class="form-control" placeholder="username"/><br/>
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<form:password path="password" class="form-control"  placeholder="password"/><br/>
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label>
								<p>点此登录>>></p>
							</label>
						</div>
					</div>
				<!-- /.col -->
					<div class="col-xs-4">
						     <input type="submit" value="登录" />
					</div>
				<!-- /.col -->
				</div>
			</form:form>

			<a href="register" class="text-center">还没有账户？点此注册</a>
	
		</div>
	  <!-- /.login-box-body -->
	</div>
	<!-- /.login-box -->
	
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