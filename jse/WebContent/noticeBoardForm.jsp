<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <script language = "javascript"> // 자바 스크립트 시작		대부분 영화리뷰게시판과 유사하지만 몇가지 차이가 있음.

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
 
 <form name ="boardForm" action="<%=request.getContextPath()%>/board/notice.do" method="get"> <!-- submit 시 /board/notice.do 로 입력값 전달 -->
<table width = "800px" align="center">
  <tr>
   <td>
    <table width="800px"  cellpadding="0" cellspacing="0" border="0">
     <tr style="background:url('<%=request.getContextPath()%>/images/table_mid.gif') repeat-x; text-align:center;">
      <td width="5px"><img src="<%=request.getContextPath()%>/images/table_left.gif" width="5" height="30" /></td>
      <td>글쓰기</td>
      <td width="5px"><img src="<%=request.getContextPath()%>/images/table_right.gif" width="5" height="30" /></td>
     </tr>
    </table>
   <table width="100%">
    <tr >
      <td>&nbsp;</td>
      <td align="center">카테고리</td>						<!-- 카테고리가 업데이트, 공지사항, 이벤트로 변화 -->
      <td>
      <select name="category" id="category" size = "1" >
				<option value="업데이트">업데이트</option>
				<option value="공지사항">공지사항</option>
				<option value="이벤트">이벤트</option>
				
			
			</select>
      
      
      </td>
      <td>&nbsp;</td>
     </tr>
      
 
      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
   
     <tr>
      <td>&nbsp;</td>
      <td align="center">제목</td>
      <td><input name="title" size="85%" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     
    <tr>
      <td>&nbsp;</td>
      <td align="center">비밀번호</td>
      <td><input  type ="password" name ="documentpassword" size="85%" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">내용</td>
      <td><textarea name="memo" style="overflow:scroll; width:100%; height:250px; padding:10px; <!-- cols="86" rows="13" --></textarea></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
       <tr height= "1" bgcolor ="#82B5DF"><td colspan= "4"></td></tr>
     <tr align= "center">
      <td> &nbsp;</td>
   <td colspan ="2">
            <input type= button value ="등록" OnClick="javascript:writeCheck();" >
            <input type= button value ="취소" OnClick="javascript:history.back(-1)" ></td>
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