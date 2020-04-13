<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "java.io.*" %>
<html>
<head>
  <title>수업관리 페이지 결과창</title>
</head>
<body>
  <!-- 정보보호학전공 14107050 임대동 -->
  <center>
    <h2>수업관리 페이지 신청 결과</h2>
    <table border=1>
      <tr>
        <td>학과</td>
        <td>학년</td>
        <td>유형</td>
        <td>교과목코드</td>
        <td>교과목명</td>
        <td>학점</td>
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