<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.cyx.entity.User"%>
<%
	User userInfo = (User)session.getAttribute("user");
	int type = 0;
	if(userInfo == null){
		response.sendRedirect("login.jsp");
	}else{
		type = userInfo.getType();
	}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%=userInfo != null ? userInfo.getUserName() : "admin" %>
	<a href="/testSpring3">主页:</a>
</body>
</html>