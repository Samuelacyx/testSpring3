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
							<h3 class="panel-title">物品出售详情</h3>
						</div>
						<div class="panel-body">
							<div class="row">
								<form:form action="goodSalesDetailUpdate_${goodSalesDetail.goodId}" modelAttribute="goodSalesDetail" method="POST">
									<div class="form-group">
										<label class="col-sm-3 control-label">物品名称</label>
										<div class="col-sm-8">
											<p>
												<form:input path="goodName" class="form-control"
													placeholder="物品名称" />
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">照片上传</label>
										<div class="col-sm-8">
											<p>
												<form:input path="img" class="form-control"
													placeholder="图片上传网页网址" />
												<img src="${goodSalesDetail.img}" width="188" height="188"/>
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">价格</label>
										<div class="col-sm-8">
											<p>
												<form:input path="price" class="form-control"
													placeholder="物品价格" />
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">物品类型</label>
										<div class="col-sm-8">
											<p>
												<form:select path="goodType" class="form-control">
													<form:option value="1">书籍</form:option>
													<form:option value="2">衣物</form:option>
													<form:option value="3">体育用品</form:option>
													<form:option value="4">学习用品</form:option>
												</form:select>
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">出售状态</label>
										<div class="col-sm-8">
											<p class="form-control">
												${goodSalesDetail.goodStatus == 0 ? '未出售' :(goodSalesDetail.goodStatus == 1 ? '已出售' : (goodSalesDetail.goodStatus == 2 ? '被投诉' : '已下架'))}
											</p>
										</div>
									</div>
									
									<div class="form-group">
										<div class="col-sm-3"></div>
										<div class="col-sm-5">
											${goodSalesDetail.goodStatus == 0 ? '<input type="submit" class="btn btn-info btn-sm col-sm-2"
												value="修改" />' : ''}
											
											<a href="javascript:javascript:history.go(-1)" class="btn btn-info btn-sm col-sm-2">返回</a>
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