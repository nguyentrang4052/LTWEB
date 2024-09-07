package vn.iostar.controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns= {"/HelloForm"})
public class HelloForm extends HttpServlet{
	private static final long serialVersionUID = -4994013089784267753L;

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		//Nhan du lieu tu request URL
		String ten = req.getParameter("ten");
		String holot = req.getParameter("holot");
		PrintWriter out = resp.getWriter();
		out.println("<b>Last Name</b>:" + ten + "<br/><b>First Name</b>:"+holot);

}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String ten = req.getParameter("ten");
		String holot = req.getParameter("holot");
		PrintWriter out = resp.getWriter();
		out.println("<b>Last Name</b>:" + ten + "<br/><b>First Name</b>:"+holot);
	}
}
