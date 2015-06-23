package com.homepage.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Request;

import com.homepage.web.beans.MemberBean;
import com.homepage.web.serviceimpls.MemberServiceImpl;
import com.homepage.web.services.MemberService;



/*@Date : someday
 * @Author: ;
 * Story : 회원가입과 로그인 담당하는 컨트롤러
 * 
 */

/**
 * Servlet implementation class MemberController
 */
@WebServlet({"/model2/join.do","/model2/login.do","/member/searchIdForm.do","/member/searchPassForm.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    MemberBean bean = new MemberBean();  
	MemberService service =new  MemberServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String path =  request.getServletPath();
		switch (path) {
		case "/member/searchIdForm.do":
			RequestDispatcher dispatcher3 = request.getRequestDispatcher("/views/model2/searchIdForm.jsp");
			dispatcher3.forward(request, response);
			break;
		case "/member/searchPassForm.do":
			RequestDispatcher dispatcher4 = request.getRequestDispatcher("/views/model2/searchPassForm.jsp");
			dispatcher4.forward(request, response);

		default:
			break;
		}

		
	
	
		
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String path =  request.getServletPath();
		
		

		
		if(path.equalsIgnoreCase("/model2/join.do")){
			 
			String ageparam = request.getParameter("age");
			int age = Integer.parseInt(ageparam);
			String name = request.getParameter("name");
			String address = request.getParameter("address");
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			request.setAttribute("name", name);
			request.setAttribute("age", ageparam);
			request.setAttribute("address", address);
			request.setAttribute("id", id);
			request.setAttribute("password", password);
			bean.setName(name);
			bean.setId(id);
			bean.setAge(age);
			bean.setAddress(address);
			bean.setPassword(password);
			
			
		
			
			service.join(id, password, name, age, address);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/css/model2/member.jsp");   /*절대경로임<- 웹컨텐츠를 기준으로.*/
			dispatcher.forward(request,response);
			
		}else if(path.equalsIgnoreCase("/model2/login.do")){
			
		
			
			String id2 = request.getParameter("id");
			String pass = request.getParameter("password");
			String msg = service.login(id2, pass);
			request.setAttribute("msg", msg);
			switch (msg) {
			case "0":
				String ment = "맞았음";
				request.setAttribute("ment", ment);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/css/model2/loginFail.jsp");   /*절대경로임<- 웹컨텐츠를 기준으로.*/
				dispatcher.forward(request,response);
				
				break;
			case "1":
				
				ment = "아이디틀림";
				request.setAttribute("ment", ment);
				RequestDispatcher dispatcher1 = request.getRequestDispatcher("/css/model2/loginFail.jsp");   /*절대경로임<- 웹컨텐츠를 기준으로.*/
				dispatcher1.forward(request,response);
				
				
				break;
			case "2":
				ment = "비번틀림";
				request.setAttribute("ment", ment);
				RequestDispatcher dispatcher2= request.getRequestDispatcher("/css/model2/loginFail.jsp");   /*절대경로임<- 웹컨텐츠를 기준으로.*/
				dispatcher2.forward(request,response);
				
				
				break;
				
				

				
				
			default:
				break;
			}
			
		}


	}}
		
	
		
		
		
		

		
		
	


