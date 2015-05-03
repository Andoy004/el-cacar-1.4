package com.carpio;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
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
@WebServlet("/user")
public class user extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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

	         // Execute SQL query
	         PreparedStatement ps = conn.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?,?,?,?)");
	       
	         ps.setString(1,request.getParameter("username"));
	         ps.setString(2,request.getParameter("password"));
	         ps.setString(3,request.getParameter("first"));
	         ps.setString(4,request.getParameter("middle"));
	         ps.setString(5,request.getParameter("last"));
	         ps.setString(6,request.getParameter("zip"));
	         ps.setString(7,request.getParameter("street"));
	         ps.setString(8,request.getParameter("brgy"));
	         ps.setString(9,request.getParameter("cp"));
	         ps.setString(10,request.getParameter("bday"));
	         ps.setString(11,request.getParameter("age"));
	         ps.setString(12,request.getParameter("email"));
	         ps.executeUpdate();
	         response.sendRedirect("index.html");
	         // Clean-up environment
	         conn.close();
	      }catch(SQLException se){
	         //Handle errors for JDBC
	         se.printStackTrace();
	      }catch(Exception e){
	         //Handle errors for Class.forName
	         e.printStackTrace();
	      }
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
