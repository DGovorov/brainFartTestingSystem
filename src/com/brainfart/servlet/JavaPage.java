package com.brainfart.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/javapage")
public class JavaPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*response.sendRedirect("/USER/JavaTestPage.jsp");*/
		/*RequestDispatcher dispatcher = request.getRequestDispatcher("/USER/JavaTestPage.jsp");
		dispatcher.forward(request, response);*/
		ServletContext sc = getServletContext();
		sc.getRequestDispatcher("/WEB-INF/javapage.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
