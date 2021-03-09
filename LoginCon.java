package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LC")
public class LoginCon extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter(); //확인차원 출력
		
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");
		
		out.print("ID: " + ID); //확인차원 출력
		out.print("PW: " + PW); //확인차원 출력
		
		Cookie[] cookies = request.getCookies(); //쿠키는 여러개가 있을수도 있으므로 배열로
		Cookie cookie = null;
		
		for(int i = 0; i < cookies.length; i++) {
			System.out.println("cookies[i].getName():" + cookies[i].getName() + ",cookies[i].getValue()" + cookies[i].getValue());
			
			if(cookies[i].getName().equals("ID")) {
				cookie = cookies[i];
			}
		}
		
		if(cookie == null) { //쿠키가 없을경우 새로 생성
			System.out.println("쿠키가 없습니다.");
			cookie = new Cookie("ID", ID);
		}
		
		response.addCookie(cookie); //응답
		cookie.setMaxAge(60*60); //쿠키 만료 기간: 1시간
		
		response.sendRedirect("loginOK.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
