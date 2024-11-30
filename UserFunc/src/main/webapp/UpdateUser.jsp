<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Styles/UpdateUser.css" />
<style>
        .bgimage {
            width: 100%;
            background: linear-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%), url('Images/Image22.jpg');
            background-position: center;
            background-size: cover;
            height: 130vh;
        }
</style>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String uname = request.getParameter("uname");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
	%>
<div class="bgimage">
<table border="0" width="100%" height = "50px" bgcolor="black">
	<tr>
	<td>
		<img src="<%=request.getContextPath()%>/Images/MusicLogo.png" style="width: 350px; margin-left: 530px;">
	</td>
	</tr>
	<tr>
	<td>
		<div class="welcome">
             <h1 style= "margin-left: 540px;" >Update your User Profile</h1>             
        </div><br />
	</td>
	</tr>
</table>
	<br><br>
	<form action="update" method="post">
	<table border="0" width="100%">
	<%--Display user details from Home page in UpdateUser page--%>
		<tr>
		<td>
			User ID: <input type="text" name="uid" value="<%= id %>" id="userid" style="margin-left: 300px" readonly><br><br>
		</td>
		</tr>
		<tr>
		<td>
			Username: <input type="text" name="uname" value="<%= uname %>" id="username" style="margin-left: 280px"><br><br>
		</td>
		</tr>
		<tr>
		<td>
			Email: <input type="email" name="email" value="<%= email %>" id="em" style="margin-left: 312px"><br><br>
		</td>
		</tr>
		<tr>
		<td>
			Password: <input type="password" name="pwd" value="<%= pwd %>" id="pwd" style="margin-left: 285px"><br><br><br>
		</td>
		</tr>
		<tr>
		<td>
			<input id="bttn2" type="submit" name="submit" value="Update my data" style="width:200px; margin-left: 330px;">
		</td>
		</tr>
	</table>
		
		

	</form>
</div>
</body>
</html>