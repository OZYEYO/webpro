<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
div{
width: 250px;
height: 200px;
border : 5px double skyblue;
padding : 10px;
}
</style>

</head>
<body>

<%
	/* request.setChracterEncoding("UTF-8"); */

	String name = request.getParameter("name");
	String area = request.getParameter("area");
	
	//엔터 \r \n
	area = area.replaceAll("\r", "").replaceAll("\n", "<br>");
%>

<%= name %>님이 남긴 말<br>
<div> <%= area %></div>
</body>
</html>