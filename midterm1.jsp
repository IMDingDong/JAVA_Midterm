<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "java.io.*" %>
<html>
<head>
  <title>���� ��� ���α׷� ���â</title>
</head>
<body>
  <!-- ������ȣ������ 14107050 �Ӵ뵿 -->
  <center>
    <h2>������� ���</h2>
    <%
      double result = 0;
      String value1 = request.getParameter("val1");
      String value2 = request.getParameter("val2");
      
      double val1 = 5;
      int val2 = 100000;
      
      for(int i = 0; i < 6; i++) {
        result = (val2 + result) * (1 + ((val1/100)/12));
      }
    %>
    ������ : <%= val1 %><br/><br/>
    ������� : <%= val2 %><br/><br/>
    6���� �� �ܰ� : <%= result %>
  </center>
</body>
</html>