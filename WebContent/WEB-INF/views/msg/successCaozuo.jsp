<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>操作成功！</title>
</head>
<body>
	<%
		
		out.println("<script language ='javaScript'> alert('操作成功，请刷新界面！');redirect:location.href = 'javascript:javascript:history.go(-1)';</script>");
		//response.setHeader("refresh", "0.5;url=javascript:javascript:history.go(-2)");
	%>
</body>
</html>