<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "java.io.*" %>
<html>
<head>
  <title>복리 계산 프로그램 결과창</title>
</head>
<body>
  <!-- 정보보호학전공 14107050 임대동 -->
  <center>
    <h2>복리계산 결과</h2>
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
    연이율 : <%= val1 %><br/><br/>
    월저축액 : <%= val2 %><br/><br/>
    6개월 후 잔고 : <%= result %>
  </center>
</body>
</html>