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
 * Servlet implementation class xs_check
 */
@WebServlet("/xs_check")
public class xs_check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xs_check() {
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
		String xsyj=request.getParameter("xsyj");
		String result=request.getParameter("result");
		String bm_id=request.getParameter("bm");
		System.out.println(result);
		boolean a=Db_text.sx_check(xsyj, result,bm_id ,id);
		PrintWriter out=response.getWriter();
        if(a==true) {
        	System.out.println("dayin");
        	out.print("<script language='javascript'>alert('…Û∫À≥…π¶');window.location.href='z_selecttext';</script>");
        }	
        else {
        	out.print("<script language='javascript'>alert('…Û∫À ß∞‹');window.location.href='z_selecttext';</script>");
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
