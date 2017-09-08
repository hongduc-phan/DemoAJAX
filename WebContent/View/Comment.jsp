<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Comment Page</title>

	<script type="text/javascript">
	function Comment()
	{
		var xhttp;
		var username = document.myform.name.value;
		var content = document.myform.comment.value;
		var url="commentController?content="+content+"&username="+username;
		
		if (window.XMLHttpRequest)
			{
				xhttp = new XMLHttpRequest();
			}
		else
		{
			xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
	
	
		xhttp.onreadystatechange = function() 
		{
			if (xhttp.readyState == 4)
				{
					var data = xhttp.responseText;
					document.getElementById("mycomment").innerHTML = data;
				}
			
		}
		
		xhttp.open("POST",url,true);
		xhttp.send();
	}
	</script>
	
</head>
<body>

<form name="myform">
	username <input type="text" name="username"/>
		<br/>
		<br/>

	<textarea style="width:300px;height:100px" name="content">
	</textarea>
		<br/>
		<br/>
<input type="button" value="Post" onclick="Comment()"/>
</form>

<div id ="mycomment"></div>

<h1>test cmt page</h1>
	
	<h1><%=request.getAttribute("listComment") %></h1>
	
	<c:forEach items="${listComment}" var = "list">
		<p>${list.username}</p>
			<br/>
		<p>${list.content}</p>
			<br/>
	</c:forEach>
</body>
</html>