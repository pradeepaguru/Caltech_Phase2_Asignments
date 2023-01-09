package advancedjava;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmployeeDashboard
 */
@WebServlet("/EmployeeDashboard")
public class EmployeeDashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeDashboard() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
             
             PrintWriter out = response.getWriter();
             out.println("<html><body>");
                 
             String userId = request.getParameter("userid");
             String password = request.getParameter("password");
              
             //creating a new hidden form field
             out.println("<form action='hiddenform' method='post'>");
             out.println("<input type='hidden' name='userid' id='userid' value='"+userId+"'>");
             out.println("<input type='hidden' name='password' id='password' value='"+password+"'>");
             out.println("<input type='submit' value='submit' >");
             out.println("</form>");
             out.println("<script>document.forms[0].submit();</script>");         
     }

     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            
             doGet(request, response);
     }

}
