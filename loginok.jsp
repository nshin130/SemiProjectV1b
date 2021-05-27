<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

<fmt:setBundle basename="nshin.jdbc"/>
<fmt:message key="url" var="url" />
<fmt:message key="drv" var="drv" />
<fmt:message key="usr" var="usr" />
<fmt:message key="pwd" var="pwd" />

 <sql:setDataSource url="${url}" driver="${drv}" user="${usr}" password="${pwd}" var="mariadb"/>

<%--<c:if test ="${param.userid eq 'abc123' and param.password eq '987xyz'}">
	<script>location.href='myinfo.jsp';</script>

</c:if>

<c:if test ="${param.userid ne 'abc123' or param.password ne '987xyz'}">
	<script>
		alert('로그인실패!');
		location.href='login.jsp';
	</script>

</c:if> --%>


<sql:query var="rs" dataSource="${mariadb}">
	select count(name) cnt from member 
	where userid = ? and passwd = ?
	<sql:param value="${param.userid}"/>
	<sql:param value="${param.passwd}"/>
</sql:query>

<c:forEach var="row" items="${rs.rows}">
	<c:if test ="${row.cnt gt 0}">
	<c:set var="userid" value="${param.userid}" scope="session" /> 
	<%--세션객채생성 이코드와 같음 session.setAttribute("userid", userid) --%>
		<script>
			location.href='myinfo.jsp';
		</script>
	</c:if>
	
	<c:if test ="${row.cnt eq 0}">
		<script>
			alert('로그인실패!');
			location.href='login.jsp';
		</script>
	</c:if>
</c:forEach>








