<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

<fmt:requestEncoding value="UTF-8"/>

<fmt:setBundle basename="nshin.jdbc"/>
<fmt:message key="url" var="url" />
<fmt:message key="drv" var="drv" />
<fmt:message key="usr" var="usr" />
<fmt:message key="pwd" var="pwd" />

<sql:setDataSource url="${url}" driver="${drv}" user="${usr}" password="${pwd}" var="mariadb"/>
 
<sql:update dataSource="${mariadb}" var="cnt">
	insert into board (title, userid, contents)
	values (?,?,?)
	<sql:param value="${param.title}" />
	<sql:param value="${param.userid}" />
	<%-- <sql:param value="${sessionScope.userid}" /> write에 작성자부분 지우면 이렇게 사용--%>
	<sql:param value="${param.contents}" />
</sql:update>

<c:if test="${cnt gt 0}">
	<c:redirect url="/board/list.jsp" />
</c:if> 

<c:if test="${cnt eq 0}">
	<script>history.go(-1);</script> <%-- 이전페이지로 이동 --%>
</c:if> 
<%-- board 테이블에 입력한 글을 저장 
	 작성자는 직접 작성하지 않고 미리 기입되어 있도록함
	 => 로그인시 생성한 세션변수 이용
	 =>input 태그의 value속성 활용
	 입력완료 후 list.jsp로 페이지 이동--%>       
    
