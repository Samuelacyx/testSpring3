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

<title>物品购买</title>
<%@ include file="tpl/header.jsp"%>
<%@ include file="link.jsp"%>
</head>
<body class="hold-transition skin-blue sidebar-mini">
		<div>
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
											<th>卖家</th>
											<th>物品名称</th>
											<th>物品价格</th>
											<th>物品类型</th>
											<th>上架时间</th>
											<th>详情</th>
										</tr>
									</thead>
									<c:forEach items="${requestScope.goodPurchase}" var="goodPurchase">
										<tr>
											<td><a href="userInfoList_${goodPurchase.userId}">${goodPurchase.user.userName}</a></td>
											<td width="500px">${goodPurchase.goodName}</td>
											<td>${goodPurchase.price}</td>
											<td>${goodPurchase.goodType == 1 ? '书籍' : (goodPurchase.goodType == 2 ? '衣物' : (goodPurchase.goodType == 3 ? '体育用品' : (goodPurchase.goodType == 4 ? '学习用品' : '未选择')))}</td>
											<td>${goodPurchase.createTime}</td>
											<td>
												<!-- 修改方式 -->
												<a href="goodPurchaseDetail_${goodPurchase.goodId}" class="btn btn-danger btn-sm">
												详情
												</a>
											</td>
										</tr>
									</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>卖家</th>
											<th>物品名称</th>
											<th>物品价格</th>
											<th>物品类型</th>
											<th>上架时间</th>
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