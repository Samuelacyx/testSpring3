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

<title>投诉详情</title>
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
								<form:form action="orderTousuAllDetailUpdate_${wordList.wordId}" modelAttribute="wordList" method="POST">
									<div class="form-group">
										<label class="col-sm-3 control-label">投诉单号</label>
										<div class="col-sm-8">
											<p class="form-control">
												${wordList.wordId}
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">投诉人</label>
										<div class="col-sm-8">
											<p class="form-control">
												<a href="userInfoList_${wordList.userId}">${wordList.userName}</a>
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">投诉内容</label>
										<div class="col-sm-8">
											<p class="form-control">
												${wordList.content}
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">投诉状态</label>
										<div class="col-sm-8">
											<p>
												<form:select path="wordStatus" class="form-control">
													<form:option value="0">未受理</form:option>
													<form:option value="1">已受理</form:option>
													<form:option value="2">不予受理</form:option>
												</form:select>
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">投诉时间</label>
										<div class="col-sm-8">
											<p class="form-control">
												${wordList.createTime}
											</p>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-3"></div>
										<div class="col-sm-5">
											${wordList.wordStatus == 0 ? '<input type="submit" class="btn btn-info btn-sm col-sm-2"
												value="确认" />' : ''}
											
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