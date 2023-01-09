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
 * Servlet implementation class Storedata
 */
@WebServlet("/Storedata")
public class Storedata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Storedata() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
		      response.setContentType("text/html");
		      PrintWriter pwriter = response.getWriter();
		     
		      HttpSession session=request.getSession(false);
		      
		      String myName=(String)session.getAttribute("uname");
		      String myage=(String)session.getAttribute("uage");
		      String myCity=(String)session.getAttribute("ucity");
		      String myGender=(String)session.getAttribute("ugender");
		      String myEmail=(String)session.getAttribute("uemail");
		    
		      
		      pwriter.println("session creation time" + session.getCreationTime());
		      pwriter.println("session last accessed time" +session.getLastAccessedTime());
		      pwriter.println("session max interval time" +session.getMaxInactiveInterval());
		      pwriter.println("session servelt context" +session.getServletContext());
		      pwriter.println("session servelt Id" +session.getId());
		      pwriter.println(session.isNew());
		      
		      pwriter.println("Name: "+myName);
		      pwriter.println("Age: "+myage);
		      pwriter.println("City: "+myCity);
		      pwriter.println("Gender: "+myGender);
		      pwriter.println("Email: "+myEmail);
		     
		      
		      pwriter.close();
		  }catch(Exception exp){
		      System.out.println(exp);
		   }
		  
	}

	

}
