package lab.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lab.mvc.model.Person;


/**
 * Servlet implementation class formcontrol
 */
@WebServlet("/formcontrol")
public class formcontrol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public formcontrol() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url1="";
		url1 = "/WebContent/test.jsp";
		this.getServletContext().getRequestDispatcher(url1).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		
		
		Person personBean = new Person(login, password);
		request.setAttribute("person",personBean);
		
		
		String url ="";
		url ="/test.jsp"; 
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher(url);
		dispatcher.include(request, response);
		
		
	}

}
