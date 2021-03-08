package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SG")
public class ServletGet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String connectedIP = (String)getServletContext().getAttribute("connectedIP");
		String connectedUser = (String)getServletContext().getAttribute("connectedUser");

		String imgDir = getServletContext().getInitParameter("imgDir");
		String testServerIP = getServletContext().getInitParameter("testServerIP");
		
		PrintWriter out = response.getWriter();
		out.print("<p>connectedIP: " + connectedIP + "</p>");
		out.print("<p>connectedUser: " + connectedUser + "</p>");
		
		out.print("<p>imgDIr: " + imgDir + "</p>");
		out.print("<p>testServerIP: " + testServerIP + "</p>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
