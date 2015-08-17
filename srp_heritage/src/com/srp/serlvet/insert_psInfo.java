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
//	public static String E_mail=null;

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

		String email = (String) request.getSession().getAttribute("inputEmail");
		String password = (String) request.getSession().getAttribute("inputPassword");
		String name =(String) request.getSession().getAttribute("name");
		String sex = (String) request.getSession().getAttribute("sex");
		String province = (String) request.getSession().getAttribute("province");
        String city = (String) request.getSession().getAttribute("city");
        if(city==null) city="";
        String hometown = province + city;
//        System.out.println("city:" + hometown);
        String path = null;
        new new_users(email,password,name,sex,hometown,path);
        
        String fathname =  (String) request.getSession().getAttribute("fath_name");
//        System.out.println(fathname);
        String fathprovince = (String) request.getSession().getAttribute("province_fath");
        String fathcity = (String) request.getSession().getAttribute("city_fath");
        if(fathcity==null) fathcity="";
        String fathhometown = fathprovince + fathcity;
        new new_users(email,fathname,fathhometown,1);
//        
        String mothname = new String(request.getParameter("moth_name").getBytes("ISO-8859-1"),"utf-8");
		String mothprovince = new String(request.getParameter("province_moth").getBytes("ISO-8859-1"),"utf-8");	
		String mothcity = null;
		if(request.getParameter("city_moth")==null) mothcity="";
		else {
			mothcity = new String(request.getParameter("city_moth").getBytes("ISO-8859-1"),"utf-8");	
		}
		String mothhometown = mothprovince + mothcity ;
//		System.out.println(mothname + mothhometown);
		new new_users(email,mothname,mothhometown,2);
		response.sendRedirect(request.getContextPath()+"/signup_success.jsp");
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
