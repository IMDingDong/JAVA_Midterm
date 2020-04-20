<%@ page contentType="text/html; charset=euc-kr" %>
<%
  request.setCharacterEncoding("euckr");
%>
<html>
<head>
  <title>Textform 처리</title>
</head>
<body>
  당신이 입력한 정보입니다.<br/>
  <b>ID</b> : <%= request.getParameter("id") %><br/>
  <b>Password</b> : <%= request.getParameter("pw") %> <br/>
  <%= request.getParameter("desc") %><br/>
</body>
</html>