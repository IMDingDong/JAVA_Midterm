<%@page contentType="text/html; charset=euc-kr" %>
<%
    request.setCharacterEncoding("euc-kr");
    String id = (String) session.getAttribute("id");
    String password = (String) session.getAttribute("password");
    String name = (String) session.getAttribute("name");
    session.setAttribute("id", id);
    session.setAttribute("password", password);
    session.setAttribute("name", name);
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
    <title>연락처 입력</title>
</head>
<body>
    연락처를 입력하세요.
    <form action="Agreement.jsp" method="post">
        주소: <input type="text" name="address"><br/>
        전화번호: <input type="text" name="phone"><br/>
        이메일:<input type="text" name="email"><br/>
        <input type="submit" value="확인">
    </form>
</body>
</html>