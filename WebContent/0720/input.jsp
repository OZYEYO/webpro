<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<pre>
작성팁 (o゜▽゜)o☆ :
- 클라이언트 요청시 데이터 값을 전송 받는다<br>
  String id = request.getParameter("id"); <br>
  String[] fr  = request.getParameterValue("id");<br>
  for를 이용해서 fr[i]번째 값을 꺼낸다
</pre>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String gend = request.getParameter("gender");
	
	String[] fr = request.getParameterValues("fruits");
	String frvalue = "";
	
	for(int i =0; i<fr.length; i++){
		frvalue +=fr[i] + "&nbsp;&nbsp;&nbsp;";
	}
	
	String file = request.getParameter("file");
%>

<%= id %><br>
<%= name %><br>
<%= gend %><br>
<%= frvalue %><br>
<%= file %><br>
</body>
</html>