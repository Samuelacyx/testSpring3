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

<title>物品管理</title>
<%@ include file="tpl/header.jsp"%>
<%@ include file="link.jsp"%>
</head>
<body class="hold-transition skin-blue sidebar-mini">
		<div >
		<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-default"
						style="position: absolute; top: 20px; left: 250px; width: 1100px; border: 1px solid #ccc;">
						<div class="panel-heading">
							<h3 class="panel-title">物品列表</h3>
						</div>
						<div class="panel-body">
							<div>
								<table id="table2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>用户名</th>
											<th>物品名称</th>
											<th>物品价格</th>
											<th>物品类型</th>
											<th>出售状态</th>
											<th>上架时间</th>
											<th>操作</th>
										</tr>
									</thead>
									<c:forEach items="${requestScope.goodCharge}" var="goodCharge">
										<tr>
											<td><a href="userInfoList_${goodCharge.userId}">${goodCharge.user.userName}</a></td>
											<td>${goodCharge.goodName}</td>
											<td>${goodCharge.price}</td>
											<td>${goodCharge.goodType == 1 ? '书籍' : (goodCharge.goodType == 2 ? '衣物' : (goodCharge.goodType == 3 ? '体育用品' : (goodCharge.goodType == 4 ? '学习用品' : '未选择')))}</td>
											<td>${goodCharge.goodStatus == 0 ? '未出售' :(goodCharge.goodStatus == 1 ? '已出售' : (goodCharge.goodStatus == 2 ? '被投诉' : '已下架'))}</td>
											<td>${goodCharge.createTime}</td>
											<td>
												<!-- 修改方式 -->
												<a href="goodChargeDetail_${goodCharge.goodId}" class="btn btn-danger btn-sm">
												修改
												</a>
											</td>
										</tr>
									</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>用户名</th>
											<th>物品名称</th>
											<th>物品价格</th>
											<th>物品类型</th>
											<th>出售状态</th>
											<th>上架时间</th>
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