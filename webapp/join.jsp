<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-doctype html>
<html  lang="ko">
    <head>
        <meta charset="UTF-8">
        <title>세미프로젝트v1-join</title>
        <link rel ="stylesheet" href="/css/base.css">
        <style>
            #joinfrm {width: 300px; margin: 70px auto; }
            #joinfrm div{ margin-bottom: 10px; }
            #joinfrm label{ display: inline-block; width: 115px; text-align: right; font-weight: bold}
            input, button { padding: 5px}
            input{ width: 135px }

        </style>
    </head>
    <body>
        <div id="wrap">
        <%@ include file="/layout/header.jsp" %>
        
        <div id="container">
        <!-- 메인영역 -->
            <h2>회원가입</h2>
           <form name="joinfrm" id="joinfrm" method="post">
           <div><label for="userid">아이디</label>
               <input type="text" name="userid" id="userid"></div>

           <div><label for ="passwd">비밀번호</label>
               <input type="password" name="passwd" id="passwd"></div>

           <div><label for ="ckpwd">비밀번호확인</label>
               <input type="password" name="ckpwd" id="ckpwd"></div>

           <div><label for ="name">이 름</label>
               <input type="text" name="name" id="name"></div>

           <div><label for ="email">이메일</label>
               <input type="text" name="email" id="email"></div>

           <div><label></label>
                    <button type="button" id="okbtn">입력완료</button>
                    <button type="reset">다시입력</button></div>

            </form>
        </div>

        <%@ include file="/layout/footer.jsp" %>
        </div>
        
        <script>
			var okbtn = document.getElementById('okbtn');
			okbtn.addEventListener('click', checkjoinfrm);
			
			function checkjoinfrm () {
				var frm = document.getElementById('joinfrm');
				if (frm.userid.value == '')
					alert('id를 입력하세요!');
				else if (frm.passwd.value == '')
					alert('비밀번호를 입력하세요!');
				else if (frm.ckpwd.value == '')
					alert('비밀번호를 확인하세요!');
				else if (frm.ckpwd.value != frm.passwd.value)
					alert('비밀번호가 일치하지 않습니다!');
				
				else if (frm.name.value == '')
					alert('이름을 입력하세요!');
				else if (frm.email.value == '')
					alert('이메일을 입력하세요!');
				else {
					frm.action = 'joinok.jsp';
					frm.submit();
				}	
			}
			
			
        
        
        </script>
        
    </body>
</html>