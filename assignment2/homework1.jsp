<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head>
  <title>include ���ù�</title>
</head>
<body>
<%
  String start = "[";
  String end = "]";
%>
������ ��¥�� �ð���
<%@ include file="homework1.jspf" %>
�Դϴ�.
<br/>
<%= jspf_var1 %>
<br/>
<%= jspf_var2 %>
</body>
</html>