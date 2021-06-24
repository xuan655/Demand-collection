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
 * Servlet implementation class select_alltext
 */
@WebServlet("/select_alltext")
public class select_alltext extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public select_alltext() {
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
		String username=request.getParameter("name");
		System.out.println(id);
	    ArrayList<textbeen> list=new  ArrayList<>();
	    int a=Integer.parseInt(id);
	    list=Db_text.select_onetext(a);
	    request.setAttribute("list", list);
	    String  state=list.get(0).getState_id();
	    System.out.println("aaa"+state);
	    if(username!=null) {
	    request.getRequestDispatcher("text_look.jsp?name="+username+"").forward(request, response);
	    }
	    else {
	    	if (state.equals("1+")) {
	    		request.getRequestDispatcher("z_checkuser/bm_looktext.jsp").forward(request, response);
	    	}else {
	    	request.getRequestDispatcher("z_checkuser/look_text.jsp").forward(request, response);
	    	}
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
