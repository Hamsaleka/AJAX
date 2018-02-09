
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("GetUserServlet")
public class GetUserServlet extends HttpServlet {
public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    doPost(request, response);
}

public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String text = "<br>Message from servlet<br>"; //message you will recieve 
    String name = request.getParameter("name");
    PrintWriter out = response.getWriter();
    out.println(text + name);
}
}




