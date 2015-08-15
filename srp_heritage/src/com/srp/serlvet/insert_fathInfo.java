package com.srp.serlvet;

import java.io.IOException;
import java.io.PrintWriter;


//import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.new_users;

public class insert_fathInfo extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public insert_fathInfo() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//	  System.out.println("yes0");
	  String e_mail = request.getParameter("e_mail");
	  
//	  System.out.println(e_mail);
	  String fath_name =  new String(request.getParameter("fath_name").getBytes("ISO-8859-1"),"utf-8");
//	  System.out.println("fath_name is:"+fath_name);
	  String fath_hometown = new String(request.getParameter("province").getBytes("ISO-8859-1"),"utf-8");
	  if(request.getParameter("city")!=null)
	    	fath_hometown += new String(request.getParameter("city").getBytes("ISO-8859-1"),"utf-8");
	  new_users newUser = new new_users(e_mail,fath_name,fath_hometown,1);
	  response.sendRedirect(request.getContextPath()+"/signup3.jsp");
	  
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
		System.out.println("init");
	}

}
