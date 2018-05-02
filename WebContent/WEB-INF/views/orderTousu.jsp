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

<title>投诉</title>
<%@ include file="tpl/header.jsp"%>
<%@ include file="link.jsp"%>
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<section class="content">
		    <div class="row">
		    	<div class="col-xs-12">
			    	<div class="panel panel-default" style="position: absolute; top: 20px; left: 250px; width: 800px; border: 1px solid #ccc;">
			    		<div class="panel-heading">
			    			<h3 class="panel-title">留言
			    			</h3>
			    		</div>
			    		<div class="panel-body">
			    			<div class="row">
			            		<div class="col-md-12">
									  <div class="form-group">
									    <div class="col-sm-8">
									      <form:form action="orderTousuSubmit" modelAttribute="words">
												<form:input path="content" class="form-control" placeholder="请留下明确的联系方式、纠纷原因、订单号，否则不与解决" />
									    <input type="submit" class="btn btn-info btn-sm col-sm-2" value="确认投诉" />
									    </form:form>
									    </div>
									  </div>
			            		</div>
			            	</div>
			    		</div>
			    	</div>
			    </div>
		    </div>
	</section>
	
	
	<div>
		<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-default"
						style="position: absolute; top: 10px; left: 250px; width: 800px; border: 1px solid #ccc;">
						<div class="panel-heading">
							<h3 class="panel-title">投诉列表</h3>
						</div>
						<div class="panel-body">
							<div>
								<table id="table2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>投诉单号</th>
											<th>投诉内容</th>
											<th>投诉状态</th>
											<th>投诉时间</th>
										</tr>
									</thead>
									<c:forEach items="${requestScope.wordLists}" var="wordLists">
										<tr>
											<td>${wordLists.wordId}</td>
											<td>${wordLists.content}</td>
											<td>${wordLists.wordStatus == 0 ? '未受理' : (wordLists.wordStatus == 1 ? '已受理' : '不予受理')}</td>
											<td>${wordLists.createTime}</td>
										</tr>
									</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>投诉单号</th>
											<th>投诉内容</th>
											<th>投诉状态</th>
											<th>投诉时间</th>
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