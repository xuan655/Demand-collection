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
 * Servlet implementation class update_user_do
 */
@WebServlet("/update_user_do")
public class update_user_do extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update_user_do() {
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
		int a=Integer.parseInt(id);
		user.setId(a);
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
		boolean res=Db_user.upadte_user(user);
		PrintWriter out=response.getWriter();
		if(res=true) {
			
			out.print("<script language='javascript'>alert('保存成功');window.location.href='index.jsp?name="+username+"';</script>");
		}
		else {
			out.print("<script language='javascript'>alert('保存成功');window.location.href='index.jsp?name="+username+"';</script>");
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
