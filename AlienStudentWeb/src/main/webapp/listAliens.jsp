<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.web.model.Alien"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		List<Alien> aList = (ArrayList<Alien>) request.getAttribute("arr");
		
	for (Alien a1 : aList) {
		out.println(a1);
		
	}
	
		
		//int age = (int) request.getAttribute("RAJUSAGE");
	%>
</body>
</html>