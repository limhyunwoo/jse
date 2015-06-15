package com.homepage.web.controllers;

import java.io.IOException;






/*
 *  @Date : someday;
 *  @Author : ;
 *  @Story : 키와 몸무게가 입력되면 카우프 지수와 메시지를 웹브라우져에 랜더링하는 역할;
 * 
 */
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.beans.KaupBean;
import com.homepage.web.serviceimpls.KaupServiceImpl;
import com.homepage.web.services.KaupService;

/**
 * Servlet implementation class KaupController
 @WebServlet({"/name/hello.nhn","/hi.do"})
 *
 */
@WebServlet({"/KaupController","/model2/kaup.do"})  
public class KaupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
 

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		KaupService service = new KaupServiceImpl();
		
		String heightParam = request.getParameter("height");
		String weightParam = request.getParameter("weight");
		double height = Double.parseDouble(heightParam);
		double weight = Double.parseDouble(weightParam);
		String path =  request.getServletPath();
//		KaupBean baen = new KaupBean();

		int index = service.getKaupIndex(height, weight);
		String msg = service.getResultMsg();
		request.setAttribute("height",height);
		request.setAttribute("weight",weight);
		request.setAttribute("index",index);
		request.setAttribute("msg",msg);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/css/model2/kaup.jsp");   /*절대경로임<- 웹컨텐츠를 기준으로.*/
		dispatcher.forward(request,response);
		

		

	}



	
	
	
	
}
