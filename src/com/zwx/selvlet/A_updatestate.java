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
 * Servlet implementation class A_updatestate
 */
@WebServlet("/A_updatestate")
public class A_updatestate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A_updatestate() {
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
		boolean a=Db_user.updatestate(username);
		System.out.println(a);
		PrintWriter out=response.getWriter();
		if (a==true) {
			out.print("<script language='javascript'> alert('操作成功');window.location.href='A_people_look';</script>");
		}
		else {
			out.print("<script language='javascript'>alert('操作失败');window.location.href='A_people_look';</script>");
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
