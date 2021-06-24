package com.zwx.selvlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;
import com.zwx.been.gjbeen;
import com.zwx.been.textbeen;
import com.zwx.dbutil.Db_text;

/**
 * Servlet implementation class gjselect
 */
@WebServlet("/gjselect")
public class gjselect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public gjselect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		//int   i =(int) request.getSession().getAttribute("i");
		int i=Integer.parseInt(request.getParameter("i"));
		System.out.println(i);
		String state=request.getParameter("state");
		System.out.println(state);
		ArrayList<gjbeen> text=new ArrayList<>();
        for (int j=0;j<=i;j++) {
        	gjbeen gj=new gjbeen();
        	int one=Integer.parseInt(request.getParameter("one_"+j+""));
        	gj.setOne_id(one);
        	System.out.println(gj.getOne_id());
        	gj.setTwo_id(request.getParameter("two_"+j+""));
        	gj.setThree_id(request.getParameter("three_"+j+""));
        	gj.setFour_id(request.getParameter("four_"+j+""));
        	text.add(gj);
        }
	    //ArrayList<textbeen> list=new  ArrayList<>();
        JSONArray jsonArray=new JSONArray();
	    jsonArray=Db_text.gj_select(text,state,i);
	    //request.setAttribute("list", list);
	    //request.getRequestDispatcher("manage/gjselect.jsp?result=yes").forward(request, response);
	    System.out.println(jsonArray.toString());
	    response.getWriter().write(jsonArray.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
