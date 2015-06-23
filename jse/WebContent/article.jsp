<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 내용</title>



<style>

	
</style>
</head>

 <body>
 <div>

<table width = "50%" align="center">
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="background:url('<%=request.getContextPath()%>/images/table_mid.gif') repeat-x; text-align:center;">
      <td width="5"><img src="<%=request.getContextPath()%>/images/table_left.gif" width="5" height="30" /></td>
      <td>작성글</td>
      <td width="5"><img src="<%=request.getContextPath()%>/images/table_right.gif" width="5" height="30" /></td>
     </tr>
    </table>
  
   <table width = 100%>
   <tr>
      <td>&nbsp;</td>
      <td align="center">아이디</td>
      <td  width = 85%  > <%=request.getAttribute("id") %> </td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
    
      <td>&nbsp;</td>
      <td align="center">카테고리</td>
      <td  width = 85%  > <%= request.getAttribute("category") %> </td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
   
   
   
   
   

      
 
   
     <tr>
      <td>&nbsp;</td>
      <td align="center">제목</td>
      <td  width = 85%  > <%= request.getAttribute("title") %>
      
       
       </td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     
    
     <tr>
      <td>&nbsp;</td>
      <td align="center">내용</td>
      <td  width = 85%  >
     	<div>
     	 <%= request.getAttribute("memo") %>
      	</div>
      </td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     
       <tr align= "center">
      <td> &nbsp;</td>
   <td colspan ="2">
           
            <input type= button value ="목록" OnClick="javascript:history.back(-1)" ></td>
<td>&nbsp;</td>

     </tr>
     
     
    </table>
   </td>
  </tr>
 </table>
 
 
	

	




 
 </div>
 
 
</body> 
</html>