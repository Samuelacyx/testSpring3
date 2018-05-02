<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@page import="com.cyx.entity.User"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">

<title>订单详情</title>
<%@ include file="tpl/header.jsp"%>
<%@ include file="link.jsp"%>
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<div>
		<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-default"
						style="position: absolute; top: 20px; left: 250px; width: 800px; border: 1px solid #ccc;">
						<div class="panel-heading">
							<h3 class="panel-title">订单详情</h3>
						</div>
						<div class="panel-body">
							<div class="row">
								<form:form action="orderTousu" modelAttribute="orderListDetail" method="POST">
									<div class="form-group">
										<label class="col-sm-3 control-label">卖家</label>
										<div class="col-sm-8">
											<p class="form-control">
												<a href="userInfoList_${orderListDetail.userId}">${orderListDetail.userName}</a>
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">物品名称</label>
										<div class="col-sm-8">
											<p class="form-control">
												${orderListDetail.goodName}
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">照片</label>
										<div class="col-sm-8">
											<p>
											<img src="${orderListDetail.img}" width="188" height="188"/>
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">价格</label>
										<div class="col-sm-8">
											<p class="form-control">
												${orderListDetail.price }
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">物品类型</label>
										<div class="col-sm-8">
											<p class="form-group">
												${orderListDetail.goodType == 1 ? '书籍' : (orderListDetail.goodType == 2 ? '衣物' : (orderListDetail.goodType == 3 ? '体育用品' : (orderListDetail.goodType == 4 ? '学习用品' : '未选择')))}
											</p>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-3"></div>
										<div class="col-sm-5">
											${orderListDetail.goodStatus == 1 ? '<input type="submit" class="btn btn-info btn-sm col-sm-2"
												value="投诉" />' : ''}
											
											<a href="javascript:history.go(-1)" class="btn btn-info btn-sm col-sm-2">返回</a>
										</div>
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