package com.homepage.web.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NowServlet
 */
@WebServlet({"/name/hello.nhn","/hi.do"})
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
  

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/*페이지 이동은 겟과 포스트가 있는데 포스트는 로그인같은 기밀성을 요하는데에서 하고 보통은 메모리의 점유를 줄이기 위해서 겟방식을 취함*/
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	String path =  request.getServletPath();
		System.out.println(""+path);
		String name = request.getParameter("name");
		
		if(path.equalsIgnoreCase("/name/hello.nhn")){
			gohello(request, response, name);
			
		}else if(path.equalsIgnoreCase("/hi.do")){
			gohi(request, response, name);	
		}
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		
		
/*		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>인사</title></head>");
		out.println("<body>");
		out.println("안녕하세요");
		out.println(request.getParameter("name"));
		out.println("님");
		out.println("</html></body>");*/
	
	
/*		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/hello.jsp");   절대경로임<- 웹컨텐츠를 기준으로.
		dispatcher.forward(request,response);*/
		
		
		
		
	}

	private void gohi(HttpServletRequest request, HttpServletResponse response,
			String name) throws ServletException, IOException {
		request.setAttribute("name", name+"잇힝");	
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/hi.jsp");   /*절대경로임<- 웹컨텐츠를 기준으로.*/
		dispatcher.forward(request,response);
	}

	private void gohello(HttpServletRequest request,
			HttpServletResponse response, String name) throws ServletException,
			IOException {
		HelloService gs = new HelloServiceImpl();
		String msg = gs.greet();

		
		request.setAttribute("name",msg+name);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/hello.jsp");   /*절대경로임<- 웹컨텐츠를 기준으로.*/
		dispatcher.forward(request,response);
	}


}
