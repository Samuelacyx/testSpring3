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
<meta http-equiv="Expires" CONTENT="0">
<meta http-equiv="Cache-Control" CONTENT="no-cache">
<meta http-equiv="Pragma" CONTENT="no-cache">
<title>物品出售</title>
<%@ include file="tpl/header.jsp"%>
<%@ include file="link.jsp"%>


</head>

<body class="hold-transition skin-blue sidebar-mini"  onload="reloadThisPage()">
	<div>
		<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-default"
						style="position: absolute; top: 20px; left: 250px; width: 800px; border: 1px solid #ccc;">
						<div class="panel-heading">
							<h3 class="panel-title">物品出售</h3>
						</div>
						<div class="panel-body">
							<div class="row">
								<form:form action="goodSaleSubmit" modelAttribute="goodSale">
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
													placeholder="图片上传，网页网址" />
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
										<div class="col-sm-3"></div>
										<div class="col-sm-5">
											<input type="submit" class="btn btn-info btn-sm col-sm-2"
												value="确认" />
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

	<div>
		<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-default"
						style="position: absolute; top: 120px; left: 250px; width: 900px; border: 1px solid #ccc;">
						<div class="panel-heading">
							<h3 class="panel-title">出售列表</h3>
						</div>
						<div class="panel-body">
							<div>
								<table id="table2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>名称</th>
											<th>价格</th>
											<th>类型</th>
											<th>状态</th>
											<th>上架时间</th>
											<th>操作</th>
											<th>详情</th>
										</tr>
									</thead>
									<c:forEach items="${requestScope.goodSales}" var="goodSales">
										<tr>
											<td width="350px">${goodSales.goodName}</td>
											<td>${goodSales.price}</td>
											<td>${goodSales.goodType == 1 ? '书籍' : (goodSales.goodType == 2 ? '衣物' : (goodSales.goodType == 3 ? '体育用品' : (goodSales.goodType == 4 ? '学习用品' : '未选择')))}</td>
											<td>${goodSales.goodStatus == 0 ? '未出售' :(goodSales.goodStatus == 1 ? '已出售' : (goodSales.goodStatus == 2 ? '被投诉' : '已下架'))}</td>
											<td>${goodSales.createTime}</td>
											<td><a class="btn btn-danger btn-sm"
												href="goodSalesDetail_${goodSales.goodId}">资料</a></td>
									
											<td>
												<form action="goodSalesDelete_${goodSales.goodId}" method="POST">	
													${goodSales.goodStatus == 0 ? '<input type="submit" value="删除" class="btn btn-danger btn-sm">' :(goodSales.goodStatus == 3 ? '<input type="submit" value="删除" class="btn btn-danger btn-sm">' : '')}	
												</form>
												<a href="${goodSales.goodStatus == 1 ? 'orderPurchase' :'#'}_${goodSales.goodId}">${goodSales.goodStatus == 0 ? '' :(goodSales.goodStatus == 3 ? '':(goodSales.goodStatus == 1 ? '买家' : '物品违规'))}</a>
											</td>
										</tr>
									</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>名称</th>
											<th>价格</th>
											<th>类型</th>
											<th>状态</th>
											<th>上架时间</th>
											<th>操作</th>
											<th>详情</th>
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