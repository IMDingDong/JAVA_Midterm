<%@ page language="java" contentType="text/html; charset=euc-kr" %>
<%@ page import = "java.io.*"%>
<%
    String result = null;
    if(agree.equals("YES")){
      String id_val = request.getParameter("id");
      String password = request.getParameter("password");
      String password_check = request.getParameter("password_check");
      String name_val = request.getParameter("name");
      String personal_num1 = request.getParameter("personal_num1");
      String personal_num2 = request.getParameter("personal_num2");
      String blog = request.getParameter("blog");
      String email = request.getParameter("email");

      try {
        String alert_msg;
        PrintWriter out_msg = response.getWriter();

        if(!password.equals(password_check)) {
          alert_msg = "<script>";
          alert_msg += "alert('패스워드와 패스워드 확인 값이 같지 않습니다.');";
          alert_msg += "location.href='join.jsp';";
          alert_msg += "</script>";
          out_msg.print(alert_msg);
        }
        else if(password.length() < 6) {
          alert_msg = "<script>";
          alert_msg += "alert('패스워드의 길이를 6자 이상 입력해주십시오.');";
          alert_msg += "location.href='join.jsp';";
          alert_msg += "</script>";
          out_msg.print(alert_msg);
        }
        else if(id_val.length() < 5) {
          alert_msg = "<script>";
          alert_msg += "alert('아이디의 길이를 5자 이상 입력해주십시오.');";
          alert_msg += "location.href='join.jsp';";
          alert_msg += "</script>";
          out_msg.print(alert_msg);
        }
        else {
          String filePath=application.getRealPath("ch11/member/"+id+".txt");
          PrintWriter writer = null;

          writer=new PrintWriter(filePath);
          writer.println("id : " + id_val);
          writer.println("password : " + password);
          writer.println("password_check : " + password_check);
          writer.println("name : " + name_val);
          writer.println("personal_num1 : " + personal_num1);
          writer.println("personal_num2 : " + personal_num2);
          writer.println("email : " + email);
          writer.println("blog : " + blog);
          result="SUCCESS";

          response.sendRedirect("Result.jsp?RESULT=" + result);
        }
      }
      catch(Exception e) {
        result="FAIL";
      }
      finally{
        try{
          out_msg.close();
          writer.close();
        }
        catch(Exception e){
          result="FAIL";
        }
      }
    }
    else{
      result="FAIL";
    }
%>