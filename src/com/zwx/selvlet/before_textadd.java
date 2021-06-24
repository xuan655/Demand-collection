package com.zwx.selvlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zwx.been.enter;
import com.zwx.dbutil.Db_user;

/**
 * Servlet implementation class before_textadd
 */
@WebServlet("/before_textadd")
public class before_textadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public before_textadd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String username=request.getParameter("name");
		System.out.println("aaa"+username);
		if (Db_user.searchinformation(username) != null) {
			ArrayList<enter> user=Db_user.searchinformation(username);
			System.out.println(user);
			request.setAttribute("user",user);
			request.getRequestDispatcher("textadd.jsp?name="+username+"").forward(request, response);
		}
		
		else {
			PrintWriter out=response.getWriter();
			out.print("<script language='javascript'>alert('Ìî±¨Ê§°Ü');window.location.href='index.jsp?name="+username+"';</script>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
