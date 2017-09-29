package com.fm.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fm.dao.AccountantDao;
@WebServlet("/AccountantLogin")
public class AccountantLogin extends HttpServlet {
	
	public static int wrongacc=0;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
	
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		boolean status=AccountantDao.validate(email, password);
		if(status){
			HttpSession session=request.getSession();
			session.setAttribute("accountant","true");
			request.getRequestDispatcher("accountanthome.jsp").include(request, response);
		}else{
			wrongacc=1;
			request.getRequestDispatcher("index.jsp").include(request, response);
		}
		
		//request.getRequestDispatcher("footer.jsp").include(request, response);
		
		
		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

}
