<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <script language = "javascript"> // 자바 스크립트 시작  :  입력 폼의 제목, 비밀번호, 내용이 비어있는지 체크해주는 구문. 글등록 버튼이 이 메소드를 호출하는 역할을 하고 조건을 다 만족하면 sumbit을 수행함.

function writeCheck()
  {
   var form = document.boardForm;
  
   if( !form.title.value )  
   {
    alert( "제목을 적어주세요" ); 
    form.title.focus();   
    return;
   }
   else     if( !form.documentpassword.value ) 
   {
                alert( "비밀번호를 적어주세요" ); 
                form.documentpassword.focus();   
                return;
               }
   else     if( !form.memo.value )   
   {
                alert( "내용를 적어주세요" ); 
                form.memo.focus();   
                return;
               }


 
  form.submit();
  }                          //자바 스크립트 끝
 </script>    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화리뷰게시판</title>



<style>

</style>
</head>

 <body>
 <div>
 
 <form name ="boardForm" action="<%=request.getContextPath()%>/board/moviereview.do" method="get">  <!-- submit 될 시 가상주소 /board/moviereview.do로  입력값을 전달 -->
<table width = "800px" align="center">
  <tr>
   <td>
    <table width=100%  cellpadding="0" cellspacing="0" border="0"> 						
     <tr style="background:url('<%=request.getContextPath()%>/images/table_mid.gif') repeat-x; text-align:center;">
      <td width="5"><img src="<%=request.getContextPath()%>/images/table_left.gif" width="5" height="30" /></td>
      <td>글쓰기</td>
      <td width="5"><img src="<%=request.getContextPath()%>/images/table_right.gif" width="5" height="30" /></td>
     </tr>
    </table>
   <table width=100%>
    <tr >
      <td>&nbsp;</td>
      <td align="center">카테고리</td>				<!-- 카테고리 셀렉트 기능 -->
      <td>
      <select name="category" id="category" size = "1" >
				<option value="호러">호러</option>
				<option value="액션">액션</option>
				<option value="스릴러">스릴러</option>
				<option value="판타지">판타지</option>
				<option value="무협">무협</option>
				<option value="로맨스">로맨스</option>
			
			</select>
      
      
      </td>
      <td>&nbsp;</td>
     </tr>
      
 
      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
   
     <tr>
      <td>&nbsp;</td>
      <td align="center">제목</td>								<!-- 게시판 글제목 입력 텍스트박스 -->
      <td><input name="title" size="85%" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     
    <tr>
      <td>&nbsp;</td>
      <td align="center">비밀번호</td>									<!-- 게시판 비밀번호 입력 텍스트박스 -->
      <td><input  type ="password" name ="documentpassword" size="85%" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">내용</td>										<!-- 게시판 글내용 입력 텍스트박스 -->
      <td><textarea name="memo"  style="overflow:scroll; width:100%; height:250px; padding:10px; <!-- cols="86" rows="13" --></textarea></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
       <tr height= "1" bgcolor ="#82B5DF"><td colspan= "4"></td></tr>
     <tr align= "center">
      <td> &nbsp;</td>
   <td colspan ="2">
            <input type= button value ="등록" OnClick="javascript:writeCheck();" >		<!-- 등록을 누르면 제일 위쪽에 있는 자바스크립트 구문을 호출함. -->
            <input type= button value ="취소" OnClick="javascript:history.back(-1)" ></td>		<!-- 취소를 누르면 이전에 왔던 페이지로 돌아감. -->
<td>&nbsp;</td>

     </tr>
    </table>
   </td>
  </tr>
 </table>
 
 
	

	




	</form>
 
 </div>
 
 
</body> 
</html>