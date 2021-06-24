package com.zwx.selvlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zwx.been.textbeen;
import com.zwx.dbutil.Db_text;

/**
 * Servlet implementation class bm_selecttext
 */
@WebServlet("/bm_selecttext")
public class bm_selecttext extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bm_selecttext() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String  username =(String) request.getSession().getAttribute("name");
		System.out.println("当前用户名"+username);
	    ArrayList<textbeen> list=new  ArrayList<>();
	   // int a=Integer.parseInt(id);
	    list=Db_text.bm_select_alltext(username);
	    request.setAttribute("list", list);
	    request.getRequestDispatcher("z_checkuser/bm_searchtext.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
