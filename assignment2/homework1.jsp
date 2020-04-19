<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head>
  <title>include 지시문</title>
</head>
<body>
<%
  String start = "[";
  String end = "]";
%>
현재의 날짜와 시각은
<%@ include file="homework1.jspf" %>
입니다.
<br/>
<%= jspf_var1 %>
<br/>
<%= jspf_var2 %>
</body>
</html>