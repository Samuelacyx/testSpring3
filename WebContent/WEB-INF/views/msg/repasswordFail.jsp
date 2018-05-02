<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册失败</title>
</head>
<body>
	<%
		out.println("<script language ='javaScript'> alert('两次密码不一致！');</script>");
		response.setHeader("refresh", "0.5;url=/testSpring3/register");
	%>
</body>
</html>