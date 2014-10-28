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
 * Servlet implementation class GuessServlet
 */
@WebServlet("/GuessServlet")
public class GuessServlet extends HttpServlet implements Serializable {
	

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GuessServlet() {
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
		HttpSession se = request.getSession(); //取session
        Integer guessCount = (Integer)se.getAttribute("guessCount");
        guessCount++;
        se.setAttribute("guessCount", guessCount);
        String guessNumberString = request.getParameter("guessNumber");
        Integer guessNumber = Integer.parseInt(guessNumberString);
        Integer answer = (Integer)se.getAttribute("answer");
        se.setAttribute("guessNumber", guessNumber);
        String resString = "";
        if(guessNumber<answer){
        	resString = "偏小了";
        	se.setAttribute("resString", resString);
        	request.getRequestDispatcher("/guess.jsp").forward(request,
    				response);
        }else if(guessNumber>answer){
        	resString = "偏大了";
        	se.setAttribute("resString", resString);
        	request.getRequestDispatcher("/guess.jsp").forward(request,
    				response);
        }else{
        	resString = "猜对了";
        	se.setAttribute("resString", resString);
        	request.getRequestDispatcher("/success.jsp").forward(request,
    				response);
        }
	}

}
