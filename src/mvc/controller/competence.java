package mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class competence
 */
@WebServlet("/competence")
public class competence extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletResponse response; 
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public competence() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	out.println("<HTML>");
	out.println("<HEAD><TITLE>Our FirstServlet</TITLE></HEAD>");
	out.println("<BODY>");
	out.println("<H1>Hello World </H1>");
	out.println("</BODY></HTML>");
	out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response)
throws ServletException, IOException {
response.setContentType("text/html");
    PrintWriter out = response.getWriter();

	
	out.println("<HTML>\n<BODY>\n" +
				"<H1>Recapitulatif des informations</H1>\n" +
						   
				"<table>"+
				"<tr>"+
				"<th> Nom de la compétence: </th>"+
				"<th> Nom de la famille de la compétence: </th>"+
				"<th> description: </th>"+
				
				"</tr>"+
				"<tr>"+
				"<td>"+
				 request.getParameter("competence")+
				 "</td>"+
				"<td>"
			
				+ request.getParameter("famille") + 
				"</td>"+
				"<td>"
				+ request.getParameter("description") +  
				"</td>"+
				
				"</tr>"+ 
			
				"</table>"	+
				
				    
				
		"</BODY></HTML>");  
    }
}