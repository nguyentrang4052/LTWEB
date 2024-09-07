package vn.iostar.controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/Home","/Trangchu"})
public class hellocontroller extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = -7243241598038712005L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		PrintWriter printW = resp.getWriter();
		printW.println("<h1>HelloWorld</h1>");
		printW.close();
	}
}
