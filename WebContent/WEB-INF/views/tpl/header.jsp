<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.cyx.entity.User"%>
<%

	if((User)session.getAttribute("user") == null){
		response.sendRedirect("login");
	}else{
%>
<header class="main-header">
  <!-- Logo -->
  <a href="#/" class="logo">
    <span class="logo-lg"><b>校园二手网</b></span>
  </a>
  <!-- Header Navbar: style can be found in header.less -->
  <nav class="navbar navbar-static-top">

    <div class="navbar-custom-menu">
      <ul class="nav navbar-nav">
        <!-- Messages: style can be found in dropdown.less-->

        <!-- User Account: style can be found in dropdown.less -->
        <li class="dropdown user user-menu">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            
            <span class="hidden-xs"><%=(User)session.getAttribute("user") != null ? ((User)session.getAttribute("user")).getUserName() : "admin" %></span>
          </a>
          <ul class="dropdown-menu">

            <li class="user-footer">

              <div class="pull-right">
                <a href="login" class="btn btn-default btn-flat">退出</a>
              </div>
            </li>
          </ul>
        </li>
        <!-- Control Sidebar Toggle Button -->
        <!-- <li>

        </li> -->
      </ul>
    </div>
  </nav>
</header>
 <aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">


 	<ul class="sidebar-menu" data-widget="tree">
		<li class="header">导航</li>
		<%
				if(((User)session.getAttribute("user")).getType() == 0){
					out.print("<li> <a href='/testSpring3'><i class='fa fa-circle-o text-aqua'></i><span>主页</span></a>");
					out.print("<li> <a href='user'><i class='fa fa-circle-o text-aqua'></i><span>用户管理</span></a>");
					out.print("<li> <a href='goodCharge'><i class='fa fa-circle-o text-aqua'></i><span>物品管理</span></a>");
					out.print("<li> <a href='orderTousuAll'><i class='fa fa-circle-o text-aqua'></i><span>纠纷管理</span></a>");
					out.print("<li> <a href='orderSelect'><i class='fa fa-circle-o text-aqua'></i><span>订单查询</span></a>");
				}else{
					out.print("<li> <a href='/testSpring3'><i class='fa fa-circle-o text-aqua'></i><span>主页</span></a>");
					out.print("<li> <a href='goodPurchase'><i class='fa fa-circle-o text-aqua'></i><span>物品购买</span></a>");
					out.print("<li> <a href='goodSale'><i class='fa fa-circle-o text-aqua'></i><span>物品出售</span></a>");
					out.print("<li> <a href='orderTousu'><i class='fa fa-circle-o text-aqua'></i><span>订单投诉</span></a>");
					out.print("<li> <a href='orderList'><i class='fa fa-circle-o text-aqua'></i><span>订单中心</span></a>");
					out.print("<li> <a href='userInfo'><i class='fa fa-circle-o text-aqua'></i><span>个人信息</span></a>");
				}
			}
		%>
	</ul>
  </section>

</aside>	
