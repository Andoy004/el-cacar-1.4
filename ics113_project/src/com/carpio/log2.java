package com.carpio;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.*;
/**
 * Servlet implementation class user
 */
@WebServlet("/log2")
public class log2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		aa(request,response);

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		aa(request,response);
	}
	
	
	public void aa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
		
		 final String JDBC_DRIVER="com.mysql.jdbc.Driver";  
	       final String DB_URL="jdbc:mysql://localhost/carpio";

	      //  Database credentials
	       final String USER = "root";
	       final String PASS = "persona!";
	      
	      // Set response content type
	      response.setContentType("text/html");
	      PrintWriter out = response.getWriter();
	      try{
	         // Register JDBC driver
	         Class.forName("com.mysql.jdbc.Driver");

	         // Open a connection
	         Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
	         String aa;
	         Cookie c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12;
	         // Execute SQL query
	       Statement q = conn.createStatement();
	       String sql;
	       sql="select * from user where username = '"  +   request.getParameter("uname") +  "' and pass = '"+ request.getParameter("pass")+"' ";
	       ResultSet rs = q.executeQuery(sql);
	  
	       
	       rs.next();
	       

	       
	       aa=   rs.getString("username")
	    	+" "+   rs.getString("pass")
	       +" "+ rs.getString("fname")
	       +" "+   rs.getString("mname")
	       +" "+  rs.getString("lname")
	       +" "+   rs.getString("zip")
	       +" "+   rs.getString("street")
	       +" "+   rs.getString("brg")
	       +" "+   rs.getString("city")
	       +" "+  rs.getString("bday")
	       +" "+   rs.getString("age")
	       +" "+   rs.getString("email");
	       



	       
	       String a[] = aa.split("\\s");
	        c1 =new Cookie("username", a[0]);
	           c2 =new Cookie("password", a[1]);
	         c3 =new Cookie("a", a[2]);
	         c4 =new Cookie("b", a[3]);
	          c5 =new Cookie("c", a[4]);
	          c6 =new Cookie("d", a[5]);
	         c7 =new Cookie("e", a[6]);
	          c8 =new Cookie("f",a[7]);
	          c9 =new Cookie("g", a[8]);
	          c10 =new Cookie("h", a[9]);
	          c11 =new Cookie("i", a[10]);
	          c12 =new Cookie("j", a[11]);
	         
	         
	         
	         response.addCookie(c1);
	         response.addCookie(c2);
	         response.addCookie(c3);
	         response.addCookie(c4);
	         response.addCookie(c5);
	         response.addCookie(c6);
	         response.addCookie(c7);
	         response.addCookie(c8);
	         response.addCookie(c9);
	         response.addCookie(c10);
	         response.addCookie(c11);
	         response.addCookie(c12);
	       
	       
	      
	      response.addCookie(c1);
	         RequestDispatcher view = request.getRequestDispatcher("index.jsp");
	         view.forward(request, response);
	         rs.close();
	         // Clean-up environment
	         conn.close();
	      }catch(SQLException se){
	         //Handle errors for JDBC

	    		RequestDispatcher view = request.getRequestDispatcher("login.jsp");
	    	      view.forward(request, response);
	         se.printStackTrace();
	      }catch(Exception e){
	         //Handle errors for Class.forName

	    		  RequestDispatcher view = request.getRequestDispatcher("login.jsp");
	    	      view.forward(request, response);
	         e.printStackTrace();
	      }
	
	}

}
