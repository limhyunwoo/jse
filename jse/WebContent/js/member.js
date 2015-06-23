/**
 * @Date : 2015.06.
 * @Author:itbank
 * @Story:member.jsp, memberForm.jsp 관련 js 파일
 * 
 */


var searchId= function(url) {
		window
				.open(
						url,
						"searchId",
						"scrollbars,toolbar=no, location=no, director=no, menubar=yes,resizeable=yes,width=600, height=500, top=200, left=400 ");

	}

	var searchPass = function(url) {
		window
				.open(
						url,
						"searchPass",
						"scrollbars,toolbar=no, location=no, director=no, menubar=yes,resizeable=yes,width=600, height=500, top=200, left=400 ");

	}



var join = function () {
	//버튼 이미지로 처리하는 법.
	document.frmJoin.submit();

}

var login = function() {

	document.frmLogin.submit();
}