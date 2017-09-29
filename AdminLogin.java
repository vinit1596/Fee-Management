package com.fm.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	
	
	public static int adminwrong=0; 
	
	
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		if(email.equals("admin@feereport.com")&&password.equals("admin123")){
			HttpSession session=request.getSession();
			session.setAttribute("admin","true");
			session.setAttribute("EMAILADMIN", email);
			request.getRequestDispatcher("/adminhome.jsp").include(request, response);
		}else{
			adminwrong=1;
			request.getRequestDispatcher("/index.jsp").include(request, response);
		}
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
