package com.fm.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fm.beans.AccountantBean;
import com.fm.dao.AccountantDao;


@WebServlet("/AddAccountant")
public class AddAccountant extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public static int sucessadeedaccountant=0;
    
    public AddAccountant() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("Name");
	 	String email=request.getParameter("Emailid");
		String password=request.getParameter("Password");
		String address=request.getParameter("Address");
		String contact=request.getParameter("Contact");
		
		AccountantBean bean=new AccountantBean(name, email, password, address, contact);
		System.out.println("inserting.....");
		int status=AccountantDao.save(bean);
		
		sucessadeedaccountant=1;
		request.getRequestDispatcher("AddAccountantForm.jsp").include(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
