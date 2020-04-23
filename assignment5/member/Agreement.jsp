<%@page contentType="text/html; charset=euc-kr" %>
<%
    request.setCharacterEncoding("euc-kr");
    String id = (String) session.getAttribute("id");
    String password = (String) session.getAttribute("password");
    String name = (String) session.getAttribute("name");
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    session.setAttribute("id", id);
    session.setAttribute("password", password);
    session.setAttribute("name", name);
    session.setAttribute("address", address);
    session.setAttribute("phone", phone);
    session.setAttribute("email", email);
%>
<html>
    <head>
        <title>회원가입</title>
    </head>
    <body>
        <h3>약관</h3>
        -------------------------------------------------------------<br/>
        1. 회원 정보는 웹 사이트의 운영을 위해서만 사용됩니다.<br/>
        2. 웹 사이트의 정상 운영을 방해하는 회원은 탈퇴 처리합니다.<br/>
        -------------------------------------------------------------<br/>
        <form action="subscribe.jsp" method="post">
            위의 약관에 동의하십니까?
            <input type="radio" name="agree" value="yes">동의함
            <input type="radio" name="agree" value="no">동의하지 않음
            <br/><br/>
            <input type="submit" value="확인">
        </form>
    </body>
</html>