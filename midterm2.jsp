<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "java.io.*" %>
<html>
<head>
  <title>�������� ������ ���â</title>
</head>
<body>
  <!-- ������ȣ������ 14107050 �Ӵ뵿 -->
  <center>
    <h2>�������� ������ ��û ���</h2>
    <table border=1>
      <tr>
        <td>�а�</td>
        <td>�г�</td>
        <td>����</td>
        <td>�������ڵ�</td>
        <td>�������</td>
        <td>����</td>
      </tr>
      <tr>
        <td><%= request.getParameter("major") %></td>
        <td><%= request.getParameter("grade") %></td>
        <td><%= request.getParameter("category") %></td>
        <td><%= request.getParameter("lecture_code") %></td>
        <td><%= request.getParameter("lecture_name") %></td>
        <td><%= request.getParameter("lecture_num") %></td>
      </tr>
    </table>
  </center>
</body>
</html>