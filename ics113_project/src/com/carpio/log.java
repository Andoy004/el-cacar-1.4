package com.carpio;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class log
 */
@WebServlet("/log")
public class log extends HttpServlet {
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
	       response.setContentType("text/html");
		      PrintWriter out = response.getWriter();
	       
	       try{
	    	   Class.forName("com.mysql.jdbc.Driver");

		         // Open a connection
		         Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);

		         // Execute SQL query
		         PreparedStatement ps = conn.prepareStatement("insert into room values(?,?,?)");
		       
		         ps.setString(1,request.getParameter("numGuest"));
		         ps.setString(2,request.getParameter("type"));
		         ps.setString(3,request.getParameter("typer"));
		         ps.executeUpdate();
		         response.sendRedirect("index.jsp");
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
