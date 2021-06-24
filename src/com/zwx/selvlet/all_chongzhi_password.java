package com.zwx.selvlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zwx.dbutil.Db_user;

/**
 * Servlet implementation class all_chongzhi_password
 */
@WebServlet("/all_chongzhi_password")
public class all_chongzhi_password extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public all_chongzhi_password() {
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
		boolean resulet=Db_user.update_password(username);
		PrintWriter out=response.getWriter();
		if (resulet) {
			
			out.print("<script language='javascript'>alert('√‹¬Î÷ÿ÷√≥…π¶');window.location.href='#?name="+username+"';</script>");
		}
		else {
			out.print("<script language='javascript'>alert('√‹¬Î÷ÿ÷√ ß∞‹');window.location.href='#?name="+username+"';</script>");
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
