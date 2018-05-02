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
			    				<form:form action="userInfo" modelAttribute="userInfoDetail"  >
			    					<div class="form-group">
										<label class="col-sm-3 control-label">用户ID</label>
										<div class="col-sm-8">
											<p class="form-control">
												${userInfoDetail.userId}
											</p>
									    </div>
									</div>
			    					<div class="form-group">
										<label class="col-sm-3 control-label">性别</label>
										<div class="col-sm-8">
											<p class="form-control">
												${userInfoDetail.sex == 2? '未选择' : (userInfoDetail.sex == 0? '男' : '女')}
											</p>
									    </div>
								  	</div>
								  	<div class="form-group">
										<label class="col-sm-3 control-label">学校</label>
										<div class="col-sm-8">
											<p class="form-control">${userInfoDetail.school}</p>
									    </div>
								 	</div>
								 	<div class="form-group">
										<label class="col-sm-3 control-label">地址</label>
										<div class="col-sm-8">
											<p class="form-control">${userInfoDetail.address}</p>
									    </div>
									</div>
			    					<div class="form-group">
										<label class="col-sm-3 control-label">职位</label>
										<div class="col-sm-8">
											<p class="form-control">
												${userInfoDetail.status == 2? '未选择' : (userInfoDetail.status == 0? '老师' :'学生')}
											</p>
									    </div>
								 	</div>
								  	<div class="form-group">
										<label class="col-sm-3 control-label">手机号</label>
										<div class="col-sm-8">
											<p class="form-control">${userInfoDetail.mobile}</p>
									    </div>
									</div>
									<div class="form-group">
								    	<div class="col-sm-3"></div>
								    	<div class="col-sm-5"><a class="btn btn-danger btn-sm" href="javascript:history.go(-1)" >返回</a></div>
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

</html>