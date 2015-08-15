package com.srp.serlvet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.new_users;

public class insert_psInfo extends HttpServlet {
	public static String E_mail=null;

	/**
	 * Constructor of the object.
	 */
	public insert_psInfo() {
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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
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

		String e_mail = request.getParameter("inputEmail");
		E_mail = e_mail;
//		System.out.println(E_mail);
		String password = request.getParameter("inputPassword");
	    String name = request.getParameter("name");
	    String sex = new String(request.getParameter("sex").getBytes("ISO-8859-1"),"utf-8");
//	    System.out.println(sex);
//	    String a = request.form("province1");
	    String hometown = new String(request.getParameter("province").getBytes("ISO-8859-1"),"utf-8");
//	    System.out.println(request.getParameter("city"));
	    if(request.getParameter("city")!=null)
	    	hometown += new String(request.getParameter("city").getBytes("ISO-8859-1"),"utf-8");
//        System.out.println(home_town1);
//        System.out.println(home_town2);
//	    System.out.println(home_town);
	    String path = null;
//	    System.out.println(e_mail);
//	    System.out.println(password);
//	    System.out.println(name);
	    new_users newUser = new new_users(e_mail,password,name,sex,hometown,path);
	    HttpSession session = request.getSession();
	    session.setAttribute("e_mail", e_mail);
//	    request.setAttribute("e_mail", e_mail);  
//       request.getRequestDispatcher("request.getContextPath()"+"/signup2.jsp").forward(request, response);
	    response.sendRedirect(request.getContextPath()+"/signup2.jsp");
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
