package advancedjava;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class ValidFilter1
 */
@WebFilter("/ValidFilter1")
public class ValidFilter implements Filter {

    /**
     * Default constructor. 
     */
    public ValidFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		String name = request.getParameter("user");
		String age1 = request.getParameter("age");
		 
		
		if(name!= ""&& age1 != ""){
			response.getWriter().write("passing through ValidFilter...............");
	     chain.doFilter(request, response);
		}
		else{
       	 response.getWriter().write("Blocked from Valid filter");
        }
        
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
