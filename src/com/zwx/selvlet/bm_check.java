package com.zwx.selvlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zwx.dbutil.Db_text;

/**
 * Servlet implementation class bm_check
 */
@WebServlet("/bm_check")
public class bm_check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bm_check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String id=request.getParameter("id");
		String bmyj=request.getParameter("bmyj");
		String result=request.getParameter("result");
		//String bm_id=request.getParameter("bm");
		String  username =(String) request.getSession().getAttribute("name");
		System.out.println(username);
		System.out.println(result);
		boolean a=Db_text.bm_check(bmyj, result,id);
		PrintWriter out=response.getWriter();
        if(a==true) {
        	System.out.println("dayin");
        	out.print("<script language='javascript'>alert('…Û∫À≥…π¶');window.location.href='bm_selecttext';</script>");
        }	
        else {
        	out.print("<script language='javascript'>alert('…Û∫À ß∞‹');window.location.href='bm_selscttext';</script>");
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
