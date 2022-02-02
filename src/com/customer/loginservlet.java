package com.customer;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		boolean isTrue;
		
	  
		isTrue = cusDButil.validate(uname, password);
		
		if (isTrue == true) {
			HttpSession session = request.getSession();
		    session.setAttribute("uname",uname);
			List<Customer> customerDetails = cusDButil.getCustomer(uname);
			request.setAttribute("cusDetails",customerDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("cusAccount.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='RegisterLogin.jsp'");
			out.println("</script>");
		}
		
	}

}
