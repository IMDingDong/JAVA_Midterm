<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.io.*" %>
<%
    String agree = request.getParameter("agree");
    String result = null;

    if (agree.equals("YES")) { 
        String id = (String) session.getAttribute("id");
        String password = (String) session.getAttribute("password");
        String name = (String) session.getAttribute("name");
        String address = (String) session.getAttribute("address");
        String phone = (String) session.getAttribute("phone");
        String email = (String) session.getAttribute("email");
        PrintWriter writer = null;

        try {
            String filePath = application.getRealPath("/member/" + id + ".txt");
            
            writer = new PrintWriter(filePath);
            writer.println("아이디: " + id);
            writer.println("패스워드: " + password);
            writer.println("이름: " + name);
            writer.println("주소: " + address);
            writer.println("전화번호: " + phone);
            writer.println("이메일: " + email);
            result = "success";
        }
        catch (IOException ioe) {
            result = "fail";
        }
        finally {
            try {
                writer.close();
            }
            catch (Exception e) {
            }
        }
    }
    else {
        result = "fail";
    }
    session.invalidate();
    response.sendRedirect("result.jsp?result=" + result);
%>