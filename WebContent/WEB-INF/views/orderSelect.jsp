<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>订单查询</title>
<%@ include file="tpl/header.jsp"%>
<%@ include file="link.jsp"%>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<form:form action="findOrderByOrderId" method="post"  style="position: absolute; top: 80px; left: 250px; width: 800px; border: 1px solid #ccc;">
      <div class="input-group" >
        <input type="text" name="q" class="form-control" placeholder="输入订单号">
        <span class="input-group-btn" >
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
        </span>
      </div>
    </form:form>
    
	<c:if test="${empty requestScope.order}">
		<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-default" style="position: absolute; top: 80px; left: 250px; width: 800px; border: 1px solid #ccc;">
						<div class="panel-heading">
							<h3 class="panel-title">请输入正确的订单号，输出结果在这里显示，未查找到则不显示</h3>
						</div>
					</div>
				</div>
			</div>
		</section>
	</c:if> 
	<c:if test="${!empty requestScope.order}">
		<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-default" style="position: absolute; top: 80px; left: 250px; width: 800px; border: 1px solid #ccc;">
						<div class="panel-heading">
							<h3 class="panel-title">物品出售详情</h3>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">卖家</label>
							<div class="col-sm-8">
								<p class="form-control">
									<a href="userInfoList_${orderListDetail.userId}">${orderListDetail.userName}</a>
								</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">买家</label>
							<div class="col-sm-8">
								<p class="form-control">
									<a href="userInfoList_${order.userId}">${order.userName}</a>
								</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">物品名称</label>
							<div class="col-sm-8">
								<p class="form-control">
									<a href="goodChargeDetail_${orderListDetail.goodId}">${orderListDetail.goodName}</a>
								</p>
							</div>
						</div>
						<div class="form-group" >
							<label class="col-sm-3 control-label">照片</label>
							<div class="col-sm-8">
								<p>
									<img src="${orderListDetail.img}" width="128" height="128"/>
								</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">价格</label>
							<div class="col-sm-8">
								<p class="form-control">
									${orderListDetail.price}
								</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">物品类型</label>
							<div class="col-sm-8">
								<p class="form-control">
									${orderListDetail.goodType == 1 ? '书籍' : (orderListDetail.goodType == 2 ? '衣物' : (orderListDetail.goodType == 3 ? '体育用品' : (orderListDetail.goodType == 4 ? '学习用品' : '未选择')))}
								</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">收货人</label>
							<div class="col-sm-8">
								<p class="form-control">
									${order.receiver}
								</p>
							</div>
						</div>	
						<div class="form-group">
							<label class="col-sm-3 control-label">收货电话</label>
							<div class="col-sm-8">
								<p class="form-control">
									${order.phone}
								</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">收货地址</label>
							<div class="col-sm-8">
								<p class="form-control">
									${order.address}
								</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">下单时间</label>
							<div class="col-sm-8">
								<p class="form-control">
									${order.createTime}
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>	
	</c:if>
</body>
</html>