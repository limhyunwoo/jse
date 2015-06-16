package com.homepage.web.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.serviceimpls.ReservationServiceImpl;
import com.homepage.web.services.ReservationService;

/*
 * @Date
 * @Author
 * @story : 예약 요청을 JSP 에서 받아서 처리하는 컨트롤러
 * 
 */


@WebServlet({	"/reservation/inputCheck.do"
							,"/reservation/checkIn.do"
							,"/reservation/checkOut.do"
							,"/reservation/showStatus.do"
							})
public class ReservationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ReservationService service = new ReservationServiceImpl();
	 public static String[][] seat = new String[3][5]; // 좌석 위치값
	
	

       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String path =  request.getServletPath();
		int floor = Integer.parseInt(request.getParameter("floor"))-1;
		int row = Integer.parseInt(request.getParameter("row"))-1;
		String id = request.getParameter("id");
		seat[floor][row] = id;

		
	

		
	    switch (path) {
	    case "/reservation/checkIn.do":
//	    	
	    	System.out.println("체크인넘어옴");
	    	String msg = service.checkIn(floor, row, id);
	    	request.setAttribute("msg",msg);
	    	request.setAttribute("seat",seat);
		    RequestDispatcher dispatcher0 = request.getRequestDispatcher("/css/model2/reservationForm.jsp");
			  dispatcher0.forward(request, response);
			
	    	
	        break; // 체크인
	    case "/reservation/checkOut.do":
	    	String msg2 =service.checkOut(floor,row, id);
		    RequestDispatcher dispatcher = request.getRequestDispatcher("");
			  dispatcher.forward(request, response);
			
	        break; // 체크아웃
	    case "/reservation/inputCheck.do":
		    RequestDispatcher dispatcher1 = request.getRequestDispatcher("");
			  dispatcher1.forward(request, response);
			
	    	service.process();
	        break; // 현황보기
	    case "/reservation/showStatus.do":
	    	
	    	
		    RequestDispatcher dispatcher2 = request.getRequestDispatcher("");
			  dispatcher2.forward(request, response);
			
	    	String [][]  seat =service.showStatus();
	        break; // 
//	    case "/reservation/alertMsg.do":
//	      service.  alertMsg(9);
//	      break;
	      default : service.showStatus(); 
		    RequestDispatcher dispatcher3 = request.getRequestDispatcher("");
			  dispatcher3.forward(request, response);
			
	      
	      break;
	      
	      
	    }



	}

}
