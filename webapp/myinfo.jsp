<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-doctype html>
<html  lang="ko">
    <head>
        <meta charset="UTF-8">
        <title>세미프로젝트v1-myinfo</title>
        <link rel ="stylesheet" href="css/base.css">
        <style>
            #myinfo {width: 300px; margin: 125px auto} /*가운데*/
            .label {display: inline-block; width: 120px; text-align: right; font-weight: bold; padding-right: 5px}
            #myinfo div { padding-bottom: 5px}
        </style>
    </head>
    <body>
        <div id="wrap">
        <%@ include file="/layout/header.jsp" %>
        
        <div id="container">
            <h2>회원정보</h2>
            <div id="myinfo">
                <div><span class="label">아이디</span>
                          <span>nshin130</span></div>
                <div><span class="label">이름</span>
                          <span>신날</span></div>
                <div><span class="label">이메일</span>
                          <span>abc123@xyz.com</span></div>
                <div><span class="label">가입일</span>
                          <span>01-30-2021 12:01:33</span></div>
            </div>
        </div>
          
        <%@ include file="/layout/footer.jsp" %>
        </div>
    </body>
</html>