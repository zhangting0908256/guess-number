package zt.servlet;

import java.io.IOException;
import java.io.Serializable;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SartServlet
 */
@WebServlet("/SartServlet")
public class SartServlet extends HttpServlet implements Serializable {
	
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SartServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost()");
		int n = (int) (Math.random() * 100) + 1;
		HttpSession se = request.getSession();
		se.setAttribute("answer", n);
		se.setAttribute("guessCount", 0);
		se.setAttribute("resString", "À´²ÂÒ»²Â");
		request.getRequestDispatcher("/getNumber.jsp").forward(request,
				response);
	}

}
