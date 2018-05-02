<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@page import="com.cyx.entity.User"%>
<%@page import="com.cyx.entity.Order"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">

<title>物品详情</title>
<%@ include file="tpl/header.jsp"%>
<%@ include file="link.jsp"%>
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<div>
	<form:form modelAttribute="orders" action="goodPurchaseDetailBuy_${goodPurchaseDetail.goodId}" method="POST">
		<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-default"
						style="position: absolute; top: 20px; left: 250px; width: 800px; border: 1px solid #ccc;">
						<div class="panel-heading">
							<h3 class="panel-title">物品详情</h3>
						</div>
						<div class="panel-body">
							<div class="row">
									<div class="form-group">
										<label class="col-sm-3 control-label">物品名称</label>
										<div class="col-sm-8">
											<p class="form-control">
												${goodPurchaseDetail.goodName}
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">照片上传</label>
										<div class="col-sm-8">
											<p>
												<img src="${goodPurchaseDetail.img}" width="188" height="188"/>
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">价格</label>
										<div class="col-sm-8">
											<p class="form-control">
												${goodPurchaseDetail.price}
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">物品类型</label>
										<div class="col-sm-8">
											<p class="form-control">
												${goodPurchaseDetail.goodType == 1 ? '书籍' : (goodPurchaseDetail.goodType == 2 ? '衣物' : (goodPurchaseDetail.goodType == 3 ? '体育用品' : (goodPurchaseDetail.goodType == 4 ? '学习用品' : '未选择')))}
											</p>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-3"></div>
										<div class="col-sm-5">
										</div>
									</div>							
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-default"
						style="position: absolute; top: 180px; left: 250px; width: 800px; border: 1px solid #ccc;">
						<div class="panel-heading">
							<h3 class="panel-title">收货人信息</h3>
						</div>
						<div class="panel-body">
							<div class="row">
								
									<div class="form-group">
										<label class="col-sm-3 control-label">姓名</label>
										<div class="col-sm-8">
											<p>
												<form:input path="receiver" class="form-control" placeholder="收货人姓名"/>
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">电话</label>
										<div class="col-sm-8">
											<p>
												<form:input path="phone" class="form-control" placeholder="收货人电话"/>
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">地址</label>
										<div class="col-sm-8">
											<p>
												<form:input path="address" class="form-control" placeholder="收货人地址"/>
											</p>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-3"></div>
										<div class="col-sm-5">
											<input type="submit" class="btn btn-info btn-sm col-sm-2" value="购买" />
											
											<a href="javascript:history.go(-1)" class="btn btn-info btn-sm col-sm-2">返回</a>
										</div>
									</div>					
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		</form:form>
	</div>


</body>

</html>