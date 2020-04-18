import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public class HelloWorldServlet extends HttpServlet {
  public void init() {
    System.out.println("init!!!");
  }
  
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    System.out.println("doGet!!!");
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    Date time = new Date();
    String time_data = format.format(time);
    out.println("<html><body bgcolor=\"yellow\">" + time_data + "</body></html>");
  }
  
  public void destroy() {
    System.out.println("destroy!!!");
  }
}