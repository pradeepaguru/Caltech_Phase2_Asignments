package advancedjava;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class EmployeeHome1
 */
@WebServlet("/EmployeeHome1")
public class EmployeeHome1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
        out.println("<html><body>");
            
        String user= request.getParameter("user");
        String age = request.getParameter("age");
        String city = request.getParameter("city");
        String gender = request.getParameter("gender");
        String email= request.getParameter("email");
        
        HttpSession session=request.getSession(); 
        
        session.setAttribute("uname",user);
        session.setAttribute("uage",age);
        session.setAttribute("ucity",city);
        session.setAttribute("ugender",gender);
        session.setAttribute("uemail",email);
        out.println("Welcome"+ user);
        
        out.println("Your details are");
        out.println("Age:"+age);
        out.println("Gender"+gender);
        out.println("City"+city);
        out.println("Email"+email);
        
        out.print("<a href='storedata'+>view more details</a>");
        out.close();
	}

}
