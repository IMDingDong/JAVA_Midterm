<%@ page contentType="text/html; charset=euc-kr" %>
<%
  request.setCharacterEncoding("euckr");
%>
<html>
<head>
  <title>Textform ó��</title>
</head>
<body>
  ����� �Է��� �����Դϴ�.<br/>
  <b>ID</b> : <%= request.getParameter("id") %><br/>
  <b>Password</b> : <%= request.getParameter("pw") %> <br/>
  <%= request.getParameter("desc") %><br/>
</body>
</html>