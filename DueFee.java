package com.fm.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fm.beans.StudentBean;
import com.fm.dao.StudentDao;
@WebServlet("/DueFee")
public class DueFee extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>View Student</title>");
		out.println("<link rel='stylesheet' href='resources/bootstrap.min.css'/>");
		out.println("<link rel='stylesheet' href='style.css'/>");
		out.println("</head>");
		out.println("<body>");
		request.getRequestDispatcher("navaccountant.jsp").include(request, response);
		out.println("<div class='container'>");
		
		out.print("<h1>Due Fee</h1>");
	
	
		List<StudentBean> list=StudentDao.getDues();
		out.println("<table class='table table-bordered table-striped'>");
		out.print("<tr><th>Rollno</th><th>Name</th><th>Email</th><th>Sex</th><th>Course</th><th>Fee</th><th>paid</th><th>due</th><th>contact</th>>");
		for(StudentBean bean:list){
			out.print("<tr><td>"+bean.getRollno()+"</td><td>"+bean.getName()+"</td><td>"+bean.getEmail()+"</td><td>"+bean.getSex()+"</td><td>"+bean.getCourse()+"</td><td>"+bean.getFee()+"</td><td>"+bean.getPaid()+"</td><td>"+bean.getDue()+"</td><td>"+bean.getContact()+"</td></tr>");
		}
		out.println("</table>");
		
		out.println("</table>");
		out.println("</div>");
		out.println("<br><br>");
		request.getRequestDispatcher("footer.jsp").include(request, response);
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	
	}

}