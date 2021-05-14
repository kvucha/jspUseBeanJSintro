<!DOCTYPE html>
<%@page import="com.web.dao.AlienDao"%>
<%@page import="com.web.model.Alien"%>
<html>
<body>

<script type="text/javascript">
	    function prepareForSubmit() {
		var JSalienID = document.getElementById("jsAid");
		
		if( JSalienID.value == "" ) 
		
			   {
			   alert("enter a number");
			   return false
			   }
		      else
		      {
		    	document.forms[0].elements["mode"].value="F";
		         return true;
	        	}
	}
</script>

<% 
String ModValue = request.getParameter("mode");
String AlienName = "";
String AlienId = "";
if ("F".equals(ModValue)) {
	int aLienID= Integer.parseInt(request.getParameter("aLnID"));
    AlienDao dao = new AlienDao();
    Alien a1 = dao.getAlien(aLienID);
    AlienName = a1.getAname();
    AlienId   = String.valueOf(a1.getAid());
}
%>  


  <form action="getAlienOnSame.jsp" method="post" onSubmit="return prepareForSubmit();" >
 			  Enter AlienID : <input id="jsAid" type="text" name="aLnID"  value=<%= AlienId %>> <br>
 			  GetAlienName : <input type="text" name="aLnName" value=<%= AlienName %>>  
 			  
 			  <input type="hidden" name="mode">
  	<input type="submit">
  	</form>
  	
  	
</body>
</html>
