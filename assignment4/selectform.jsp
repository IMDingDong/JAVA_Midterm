<%@ page contentType="text/html; charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr"); %>
<html><body>
����� �з�, �Ҽӱ��� �� ���ɺоߴ� ������ �����ϴ�.<br><br>
<%
  String edu = request.getParameter("edu");
  String na = request.getParameter("na");
  String [] likes = request.getParameterValues("like");
%>
<b> <%= edu %> </b> �� <b> <%=na%> </b> <br><br>
<%
  for (int i = 0; i < likes.length; i++) {
%>
  <b> <%= likes[i] %></b><br>
<% } %>
</body></html>