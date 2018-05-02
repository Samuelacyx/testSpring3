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

<title>物品出售详情</title>
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
								<form:form action="orderPurchasePeople_${goodSalesDetail.goodId}" modelAttribute="orderPurchasePeople" method="POST">
									<div class="form-group">
										<label class="col-sm-3 control-label">买家</label>
										<div class="col-sm-8">
											<p class="form-control">
												<a href="userInfoList_${orderPurchasePeople.userId}">${orderPurchasePeople.userName}</a>
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">收货人</label>
										<div class="col-sm-8">
											<p class="form-control">
												${orderPurchasePeople.receiver}
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">收货电话</label>
										<div class="col-sm-8">
											<p class="form-control">
												${orderPurchasePeople.phone}
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">收货地址</label>
										<div class="col-sm-8">
											<p class="form-control">
												${orderPurchasePeople.address}
											</p>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-3"></div>
										<div class="col-sm-5">

											
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