package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=euc-kr");
		response.setCharacterEncoding("euc-kr");
		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("userId");
		String password = request.getParameter("userPW");
		String name = request.getParameter("userName");
		String date = request.getParameter("userBirth");
		String gender = request.getParameter("userGender");
		String address = request.getParameter("userAddress");
		System.out.println(id + " " + password + " " + name + " " + date + " " + gender + " " + address + " ");
		
		RequestDispatcher dis = request.getRequestDispatcher("homepage.jsp");
		dis.forward(request, response);	
		   
		
	}

}
