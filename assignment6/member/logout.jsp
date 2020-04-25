<%@ page language="java" contentType="text/html; charset=euc-kr" %>
<%@ page import = "java.io.*"%>
<%
    session.invalidate();
    response.sendRedirect("login.html");
%>