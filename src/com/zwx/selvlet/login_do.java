package com.zwx.selvlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zwx.been.enter;
import com.zwx.dbutil.Db_user;

/**
 * Servlet implementation class login_do
 */
@WebServlet("/login_do")
public class login_do extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login_do() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
	    //request.setAttribute("name", username);
		enter user=new enter();
		user.setUsername(username);
		user.setPassword(password);
		String state=Db_user.searchuser(user);
		System.out.print(state);
		request.getSession().setAttribute("name",username);
		PrintWriter out=response.getWriter();
		if (state.equals("0")) {
			out.print("<script language='javascript'>alert('管理员登录成功');window.location.href='manage/admin_menu.jsp?name="+username+"';</script>");
		}
		else if (state.equals("1")) {
			out.print("<script language='javascript'>alert('登录成功');window.location.href='menu.jsp?name="+username+"';</script>");
		}
		else if (state.equals("2")) {
			out.print("<script language='javascript'>alert('形式审核员登录成功');window.location.href='z_checkuser/check_menu.jsp?name="+username+"';</script>");
		}
		else if(state.equals("no_name")){
			out.print("<script language='javascript'>alert('无此用户名，请先注册');window.location.href='zhuce.jsp';</script>");
		}
		else if(state.equals("f_password")) {
			out.print("<script language='javascript'>alert('密码错误');window.location.href='login.jsp';</script>");
		}
		else if(state.equals("-1")) {
			out.print("<script language='javascript'>alert('该账户已被禁用，请联系管理员');window.location.href='login.jsp';</script>");
		}
		else {
				out.print("<script language='javascript'>alert('部门审核员登录成功');window.location.href='z_checkuser/bm_menu.jsp?name="+username+"';</script>");
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
