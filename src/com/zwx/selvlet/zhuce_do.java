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
 * Servlet implementation class zhuce_do
 */
@WebServlet("/zhuce_do")
public class zhuce_do extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public zhuce_do() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String pro=request.getParameter("pro");
        String city=request.getParameter("city");
        String unit=request.getParameter("unit");
        String zyfx=request.getParameter("zyfx");
        String szhy=request.getParameter("szhy");
        String jycd=request.getParameter("jycd");
        String zc=request.getParameter("zc");
        String address=request.getParameter("address");
		String code =request.getParameter("code");
		String phone=request.getParameter("phone");
		String phone_gd=request.getParameter("phone_gd");
		String email=request.getParameter("email");
		String qq=request.getParameter("qq");
		String msn=request.getParameter("msn");
		enter user=new enter();
		user.setUsername(username);
		user.setPassword(password);
		user.setName(name);
		user.setSex(sex);
		user.setPro(pro);
		user.setCity(city);
		user.setUnit(unit);
		user.setZyfx(zyfx);
		user.setSzhy(szhy);
		user.setJycd(jycd);
		user.setZc(zc);
		user.setAddress(address);
		user.setCode(code);
		user.setPhone(phone);
		user.setPhone_gd(phone_gd);
		user.setEmail(email);
		user.setQq(qq);
		user.setMsn(msn);
		String str=Db_user.adduser(user);
		response.setContentType("text/html;charset=UTF-8");
		if(str.equals("Y")) {
			
			PrintWriter out=response.getWriter();
			out.print("<script language='javascript'>alert('注册成功');window.location.href='login.jsp';</script>");
			//response.sendRedirect("login.jsp");
		}
		else if(str.equals("F_username")){
			PrintWriter out =response.getWriter();
			out.print("<script language='javascript'>alert('该用户名已存在');window.location.href='zhuce.jsp';</script>");		
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
