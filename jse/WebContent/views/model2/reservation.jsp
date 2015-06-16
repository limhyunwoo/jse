<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>예약결과</title>
</head>
<body>

	
	<div>
	<hr style = " width: 400px; height: 20px; border-color: #3333;"/>
	<div text align="center">
<%

String[][] seat = new String[3][5];  //전체좌석
String[][] myseat = new String [0][0];   //예약된좌석
/* int floor = Integer.parseInt((String)request.getAttribute("floor")); */
/* int row = Integer.parseInt((String)request.getAttribute("row")); */
/* myseat[floor][row] = (String)request.getAttribute("id"); */
int floor = 1;
int row = 1;


	   for (int i=0 ;i < seat.length; i++) {
           for ( int j=0; j < seat[i].length; j++) {
               if (seat[floor][row] == null) {
                 /*   System.out.print("" + (i + 1) + "0" + (j + 1) + "호" 
                           + " □\t" + "\t"); */
                %>
                <%="□" %> <%=i+1 %>-<%=j+1 %>
                <%
               } else {
            	   %>
            	   <%="■" %> <%=i+1 %>-<%=j+1 %>
            	   <%
               }
           }
           %>
           <br />
       <%
	   }
	

	
	
	   %>
	</div>

	</div>
</body>
</html>