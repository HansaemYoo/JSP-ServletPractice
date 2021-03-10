package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SU")
public class SignUp extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//utf-8로 인코딩
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		/*서블릿으로 들어온 요청은 대체로 HTML로 응답을 보내기때문에 
		PrintWriter out = response.getWriter(); 형식으로 응답을 내보낼 출력 스트림을 얻는다. */
		PrintWriter out = response.getWriter(); 
		String name = request.getParameter("name"); //이름가져오기
		String address = request.getParameter("address"); //주소가져오기
		
		out.print("<p>이름: " + name + "</p>"); //결과 출력
		out.print("<p>주소: " + address + "</p>"); //결과 출력
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
