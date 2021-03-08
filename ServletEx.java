package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletEx extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String adminID = getServletConfig().getInitParameter("adminID");
		String adminPW = getServletConfig().getInitParameter("adminPW");
		
		String imgDir = getServletContext().getInitParameter("imgDir");
		String testServerIP = getServletContext().getInitParameter("testServerIP");
		
		getServletContext().setAttribute("connectedIP", "165.62.58.33");
		getServletContext().setAttribute("connectedUser", "HS");
		
		
		PrintWriter out = response.getWriter();
		out.print("<p>adminID: " + adminID + "</p>");
		out.print("<p>adminPW: " + adminPW + "</p>");
		
		out.print("<p>imgDIr: " + imgDir + "</p>");
		out.print("<p>testServerIP: " + testServerIP + "</p>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
