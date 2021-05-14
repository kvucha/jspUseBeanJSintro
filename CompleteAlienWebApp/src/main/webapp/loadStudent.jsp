<!-- 
https://www.w3processing.com/index.php?subMenuLoad=JSP/Elements/Action/SetPropertyAction.php

 -->

<%@page import="com.krishna.web.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="std" 
             class="com.krishna.web.model.Student" 
             scope="request">
</jsp:useBean>


 <jsp:setProperty property="*" name="std" />


<%-- 
<%
StudentDao sdao = new StudentDao();
sdao.setStudent(std);



%> --%>

 <%-- Student Information: <%= std %><br/> --%>
 
 
 
 
 <%
RequestDispatcher rd = request.getRequestDispatcher("dispStudLoad.jsp");
rd.forward(request, response);
%> 
</body>
</html>