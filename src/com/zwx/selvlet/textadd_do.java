package com.zwx.selvlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zwx.been.fieldbeen;
import com.zwx.been.institution;
import com.zwx.been.mode;
import com.zwx.been.textbeen;
import com.zwx.been.type;
import com.zwx.dbutil.Db_text;
import com.zwx.dbutil.Db_user;

import sun.misc.Perf.GetPerfAction;

/**
 * Servlet implementation class textadd_do
 */
@WebServlet("/textadd_do")
public class textadd_do extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public textadd_do() {
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
		String gk=request.getParameter("gk");
		String jg_name=request.getParameter("jg_name");//机构名称
		String phone_address=request.getParameter("phone_address");//通讯地址
		String sz_address=request.getParameter("sz_address");
		String net=request.getParameter("net");//单位网址
		String email=request.getParameter("email");//电子信箱
		String legal=request.getParameter("legal");//法人代表
		String posts=request.getParameter("posts");//邮政编码
		String lname=request.getParameter("lname");//联系人
		String phone_gd=request.getParameter("phone_gd");//固定电话
		String mobile=request.getParameter("mobile");//手机
		String fax=request.getParameter("fax");//传真
		String institution=request.getParameter("institution");//机构属性
		String introduction_text=request.getParameter("introduction_text");//机构简介
		String technology=request.getParameter("technology");//技术需求名称
		String time_begin=request.getParameter("time_begin");
		String time_end=request.getParameter("time_end");
		String t_needtext_1=request.getParameter("t_needtext_1");//重大需求概述1
		String t_needtext_2=request.getParameter("t_needtext_2");//重大需求概述2
		String t_needtext_3=request.getParameter("t_needtext_3");//重大需求概述3
		String keyword=request.getParameter("keyword");//关键字
		String plan_invest=request.getParameter("plan_invest");//计划总投资
		String  mode1=request.getParameter("mode");
		String hzyxdw=request.getParameter("hzyxdw");
		String types=request.getParameter("type");//研究类型
		String classification=request.getParameter("xkfl") ;//学科分类[]
		
		//String field[]=request.getParameterValues("field");//需求技术所属领域 ——————多选
	
		String fieldadd=request.getParameter("fieldadd");
		String need_industry=request.getParameter("gc");//需求技术应用行业[]
		
//		
//		String self_financed=request.getParameter("self_financed");//企业自筹
//		String loan=request.getParameter("loan");//银行贷款
//		String else_financed=request.getParameter("else_financed");//其他资金
		textbeen textbeen=new textbeen();
		//fieldbeen fieldbeen=new fieldbeen();
		//mode mode =new mode();
		//type type =new type();
	    //institution institutio=new institution();
	    textbeen.setName(jg_name);
	    System.out.println(jg_name);
	    textbeen.setGk(gk);
	    textbeen.setSz_address(sz_address);
	    textbeen.setPhone_address(phone_address);
	    textbeen.setNet(net);
	    textbeen.setEmail(email);
	    textbeen.setLegal(legal);
	    textbeen.setPost(posts);
	    System.out.println(posts);
	    System.out.println(lname);
	    textbeen.setLname(lname);
	    textbeen.setPhone_gd(phone_gd);
	    textbeen.setMobile(mobile);
	    textbeen.setFax(fax);
	    //textbeen.setInstitution_id(institution_id);
	    textbeen.setInstitution(institution);
	    textbeen.setIntroduction(introduction_text);
	    textbeen.setTechnology(technology);
	    textbeen.setTime_begin(time_begin);
	    textbeen.setTime_end(time_end);
	    textbeen.setT_needtext_1(t_needtext_1);
	    textbeen.setT_needtext_2(t_needtext_2);
	    textbeen.setT_needtext_3(t_needtext_3);
	    textbeen.setKeyword(keyword);
	    textbeen.setPlan_invest(plan_invest);
	    //textbeen.setType_id(type_id);
	    textbeen.setType(types);
	    textbeen.setClassification(classification);
	    //textbeen.setField(field); //多选
	    String field[];
	    if(request.getParameterValues("field") != null) {
	        field=request.getParameterValues("field");
	        String field1="";
			   System.out.println("长度："+field.length);
			   for(int i=0;i<field.length;i++) {
				  field1=field1+","+field[i];
			   }
	    	textbeen.setField(field1);
	    	
	    }
//	    else {
//	    	field=null;
//	    }
	    textbeen.setFieldadd(fieldadd);
	    textbeen.setNeed_industry(need_industry);
	    textbeen.setMode(mode1);//
	    textbeen.setHzyxdw(hzyxdw);
	    //System.out.println("aaaa"+mode1[0]);
	    textbeen.setPlan_invest(plan_invest);
//	    textbeen.setSelf_financed(self_financed);
//	    textbeen.setLoan(loan);
//	    textbeen.setElse_financed(else_financed);
//	    
	    boolean str=Db_text.addtext(textbeen, username);
	    //System.out.println("123"+str);
	   // PrintWriter out=response.getWriter();
	    if(str) {
	    	PrintWriter out=response.getWriter();
			out.print("<script language='javascript'>alert('填报成功');window.location.href='index.jsp?name="+username+"';</script>");
	    	
	    }
	    else {
	    	 System.out.println("123");
	    	 PrintWriter out=response.getWriter();
			 out.print("<script language='javascript'>alert('填报失败');window.location.href='index.jsp?name="+username+"';</script>");
			
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
