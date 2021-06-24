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
 * Servlet implementation class update_password
 */
@WebServlet("/update_password")
public class update_password extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update_password() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String password1=request.getParameter("old_password");
		String password2=request.getParameter("new_password1");
		String username=request.getParameter("name");
		boolean a=Db_user.updatepassword(username, password1, password2);
		if(a) {
			PrintWriter out=response.getWriter();
			out.print("<script language='javascript'>alert('密码更新成功');window.location.href='index.jsp?name="+username+"';</script>");
		}else {
			PrintWriter out=response.getWriter();
			out.print("<script language='javascript'>alert('密码更新失败');window.location.href='index.jsp?name="+username+"';</script>");
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
