<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
 <jsp:useBean id="std" class="com.krishna.web.model.Student" scope="session">
</jsp:useBean>

 <jsp:getProperty name="std" property="rollno" /> <br>
 
 <jsp:getProperty name="std" property="sname"  /> <br>
 
 <jsp:getProperty name="std" property="marks"  />
 


</body>
</html>