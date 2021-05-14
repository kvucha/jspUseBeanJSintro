<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   


	<c:out value="${'Welcome to javaTpoint'}" />
	
	
	
	<!-- 
It is used to set the result of an expression evaluated in a 'scope'. 
This set tag is helpful because it evaluates the expression and use the result to 
set a value of java.util.Map or JavaBean?.

This tag is similar to jsp:setProperty action tag.

 -->
 <br />

	<c:set var="Income" scope="session" value="${4000*4}" />
	<c:out value="${Income}" />
	
	
	
<!-- 
If tag
 -->

	<c:set var="income" scope="session" value="${4000*4}" />
	<c:if test="${income > 24000}">
		<p>
			My income is:
			<c:out value="${income}" />
		<p>
	</c:if>	

<!-- 
Chose tag
 -->
	<br>
	<c:set var="income" scope="session" value="${400}" />
	<p>
		Your income is :
		<c:out value="${income}" />
	</p>
	
	<c:choose>
		<c:when test="${income <= 1000}">  
       Income is not good.  
    </c:when>
		<c:when test="${income > 10000}">  
        Income is very good.  
    </c:when>
		<c:otherwise>  
       Income is undetermined...  
    </c:otherwise>
	</c:choose>

	<!-- 
forTokens
 -->
<br>
	<c:forTokens items="Rahul|Nakul|Rajesh" delims="|" var="name">
		<c:out value="${name}" />  <br />
		
	</c:forTokens>

<!-- 
for each
 -->
	<br>
	<c:forEach var="j" begin="1" end="3">  
              <c:out value="${j}" /> <br />
	</c:forEach>
 </body>
</html>