<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		
		if (window.XMLHttpRequest)
			{
				xhttp = new XMLHttpRequest();
			}
		else
			xhttp = new ActiveXObject("Microsoft.XMLHTTP");
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

</body>
</html>