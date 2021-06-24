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
 * Servlet implementation class A_look_text
 */
@WebServlet("/A_look_text")
public class A_look_text extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A_look_text() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String id =request.getParameter("id");
		//String username=request.getParameter("name");
		System.out.println(id);
	    ArrayList<textbeen> list=new  ArrayList<>();
	    int a=Integer.parseInt(id);
	    list=Db_text.select_onetext(a);
	    request.setAttribute("list", list);
	    String  state=list.get(0).getState_id();
	    System.out.println("aaa"+state);
   	    request.getRequestDispatcher("manage/look_text.jsp").forward(request, response);
	    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
