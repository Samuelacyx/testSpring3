<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@page import="com.cyx.entity.User"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">

<title>个人信息</title>
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
			    			<h3 class="panel-title">个人信息
			    			</h3>
			    		</div>
			    		<div class="panel-body">
			    			<div class="row">
			    				<form:form action="userInfo" name="myform" modelAttribute="userInfo" method="POST" onSubmit="return formcheck()">
			    					<div class="form-group">
										<label class="col-sm-3 control-label">用户名</label>
										<div class="col-sm-8">
											<p class="form-control">
											<%=(User)session.getAttribute("user") != null ? ((User)session.getAttribute("user")).getUserName() : "admin" %>
									    	</p>
									    </div>
									</div>
			    					<div class="form-group">
										<label class="col-sm-3 control-label">性别</label>
										<div class="col-sm-8">
											<p>
												<form:select class="form-control" path="sex" >
													<form:option value="0">男</form:option>
													<form:option value="1">女</form:option>
													<form:option value="2">请选择</form:option>
												</form:select>
											</p>
									    </div>
								  	</div>
								  	<div class="form-group">
										<label class="col-sm-3 control-label">学校</label>
										<div class="col-sm-8">
											<p><form:input path="school" class="form-control" placeholder="学校"/></p>
									    </div>
								 	</div>
								 	<div class="form-group">
										<label class="col-sm-3 control-label">地址</label>
										<div class="col-sm-8">
											<p><form:input path="address" class="form-control" placeholder="地址"/></p>
									    </div>
									</div>
			    					<div class="form-group">
										<label class="col-sm-3 control-label">职位</label>
										<div class="col-sm-8">
											<p>
												<form:select class="form-control" path="status">
													<form:option value="0">老师</form:option>
													<form:option value="1">学生</form:option>
													<form:option value="2">请选择</form:option>
												</form:select>
											</p>
									    </div>
								 	</div>
								  	<div class="form-group">
										<label class="col-sm-3 control-label">手机号</label>
										<div class="col-sm-8">
											<form:input path="mobile" class="form-control" placeholder="手机号"/>
									    </div>
									</div>
									<div class="form-group">
								    	<div class="col-sm-3"></div>
								    	<div class="col-sm-5"><input type="submit" class="btn btn-info btn-sm col-sm-2" value="确认" onclick="if(formcheck())submitform.submit();"/></div>
								  	</div>
			    				</form:form>
			    			</div>
			    		</div>
			    	</div>
			    </div>
		    </div>
		</section>
	</div>

</body>
<script>
function formcheck(){
	alert(""+document.myform.mobile.value);
	if(document.myform.mobile.value=="" || document.myform.mobile.value is null){
	alert("手机号不能为空，请输入手机号！");
	document.myform.mobile.focus();
	return false;
	}

}
</script>
</html>