<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@page import="com.cyx.entity.Order"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">

<title>订单列表</title>
<%@ include file="tpl/header.jsp"%>
<%@ include file="link.jsp"%>
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<div >
		<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-default"
						style="position: absolute; top: 20px; left: 250px; width: 800px; border: 1px solid #ccc;">
						<div class="panel-heading">
							<h3 class="panel-title">我的订单</h3>
						</div>
						<div class="panel-body">
							<div>
								<table id="table2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>订单号</th>
											<th>收货人</th>
											<th>收货电话</th>
											<th>地址</th>
											<th>下单时间</th>
											<th>详情</th>
										</tr>
									</thead>
									<c:forEach items="${requestScope.orderLists}" var="orderLists">
										<tr>
											<td>${orderLists.orderId}</td>
											<td>${orderLists.receiver}</td>
											<td>${orderLists.phone}</td>
											<td>${orderLists.address}</td>
											<td>${orderLists.createTime}</td>
											<td><a class="btn btn-danger btn-sm"
												href="orderListDetail_${orderLists.goodId}">详情</a></td>
										</tr>
									</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>订单号</th>
											<th>收货人</th>
											<th>收货电话</th>
											<th>地址</th>
											<th>下单时间</th>
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