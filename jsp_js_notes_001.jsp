<!--
When you want to submit 

-->


<!-----------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%0000000000001%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
------------------------------->

<!DOCTYPE html>
<html>
<body>


<%! int sumval=20; %>   <!-- scriplet -->


  <form action="getAlienOnSame.jsp" >
 			  Enter Number 1 : <input type="text" name="numb1"> <br>
 			  Enter Number 2 : <input type="text" name="numb2"> <br>
 			  GetSum : <input type="text" name="reslt" value=<%= sumval %>>   <%--Expression --%>
  	<input type="submit">
  	
  	</form>
  	
  	
</body>
</html>

<!--
Notes
1. We have a form , which submits the self jsp
2. Now when you do a submit, the form gets submitted to the server
3. If we observe URL pattern , the form URL gets changed to as below
          http://localhost:8080/AlienStudentWeb/getAlienOnSame.jsp?numb1=df&numb2=&reslt=20
4. That event is not shown on the form "onSubmit" but it return true always
  
-->


<!-----------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%0000000000002%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
------------------------------->
<!DOCTYPE html>
<html>
<body>
<%! int sumval=20; %>
  <form action="getAlienOnSame.jsp" onSubmit="return false" >
 			  Enter Number 1 : <input type="text" name="numb1"> <br>
 			  Enter Number 2 : <input type="text" name="numb2"> <br>
 			  GetSum : <input type="text" name="reslt" value=<%= sumval %>>
  	<input type="submit">
	
	</form>
</body>
</html>


<!--
Notes
Observe URL pattern :-
 Now we explicitly keep onSubmit return statement.
 for true
          http://localhost:8080/AlienStudentWeb/getAlienOnSame.jsp?numb1=df&numb2=&reslt=20
 for false
           http://localhost:8080/AlienStudentWeb/getAlienOnSame.jsp
		   
  1. onsubmit event based if true, the action is performed and is submitted to the server   
     i.e, the form-wise data is submitted to the server. that is the tomcat knows what are
	 numb1 and what is numb2 and what is reslt is
  2. onsubmit event based if false, the action is not performed  
     i.e, the form-wise data is not submitted to the server and tomcat dosent know what are
	 numb1 and what is numb2 and what is reslt is
	 
   
-->
<!-----------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%0000000000003%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
------------------------------->

<!DOCTYPE html>
<html>
<body>

<script type="text/javascript">
	function prepareForSubmit() {
		return true;
	}
</script>

<% 
String ModValue = request.getParameter("mode");
int sumval = 0;
if ("F".equals(ModValue)) {
	sumval=50; 
}



%>  


  <form action="getAlienOnSame.jsp" onSubmit="return prepareForSubmit();" >
 			  Enter Number 1 : <input type="text" name="numb1"> <br>
 			  Enter Number 2 : <input type="text" name="numb2"> <br>
 			  GetSum : <input type="text" name="reslt" value=<%= sumval %>>  
 			  
 			  <input type="hidden" name="mode">
  	<input type="submit">
  	</form>
  	
  	
</body>
</html>
  <!-- just introducing 

       a)  javascript funtion
	   b)  hidden field-
	   -> 

-->
<!-----------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%0000000000004%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
------------------------------->
<!DOCTYPE html>
<html>
<body>

<script type="text/javascript">
	function prepareForSubmit() {
		document.forms[0].elements["mode"].value="F";
		return true;
	}
</script>

<% 
String ModValue = request.getParameter("mode");
int sumval = 0;
if ("F".equals(ModValue)) {
	int i = Integer.parseInt(request.getParameter("numb1"));
	int j = Integer.parseInt(request.getParameter("numb2"));
	sumval=i+j; 
}
%>  


  <form action="getAlienOnSame.jsp" onSubmit="return prepareForSubmit();" >
 			  Enter Number 1 : <input type="text" name="numb1"> <br>
 			  Enter Number 2 : <input type="text" name="numb2"> <br>
 			  GetSum : <input type="text" name="reslt" value=<%= sumval %>>  
 			  
 			  <input type="hidden" name="mode">
  	<input type="submit">
  	</form>
  	
  	
</body>
</html>
  <!-- introducing 

       a)  document.forms[0].elements["mode"].value  javascript element
	   b)  and some programming
	   -> 
