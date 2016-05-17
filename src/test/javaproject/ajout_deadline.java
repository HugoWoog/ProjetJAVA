package test.javaproject;

import javax.servlet.http.HttpServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ajout_deadline extends HttpServlet {

	
	private static final long serialVersionUID = 1L;
	
	 public static final String VUE = "/WEB-INF/inscription.jsp";
	    public static final String CHAMP_NOM = "nomlivrable";
	    public static final String CHAMP_DATE = "datelivrable";
	    public static final String CHAMP_VALIDER = "valider";
		private ServletRequest request;
		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			String var="bonjour";
			 
			request.setAttribute("reponse", var);
			 this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
		}
		
		String nom = request.getParameter( CHAMP_NOM );
	    String date = request.getParameter( CHAMP_DATE );
	    String valider = request.getParameter( CHAMP_VALIDER);

	    
	

}
