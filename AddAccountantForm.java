package com.fm.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AddAccountantForm")
public class AddAccountantForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AddAccountantForm() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
HttpSession session=request.getSession(false);
		
		if(session==null||session.getAttribute("admin")==null){
			
			request.getRequestDispatcher("adminhome.jsp").include(request, response);
		}else{
			
			request.getRequestDispatcher("AddAccountantForm.jsp").include(request, response);
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
