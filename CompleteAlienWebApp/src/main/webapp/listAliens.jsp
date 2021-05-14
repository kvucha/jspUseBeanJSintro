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
<table border="1">
    <tr>
        <th>ALIEN</th>
        <th>NAME</th>
        <th>TECHNOLOGY</th>
    </tr>
    <c:forEach var="x" items="${arr}">
        <tr>
            <td>${x.aid}</td>
            <td>${x.aname}</td>
			<td>${x.tech}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>