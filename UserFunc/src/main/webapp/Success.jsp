<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Record Inserted!</title>
<style>
	.sTbl {
    width: 970px;
    height: 530px;
    margin: auto;
    padding: 50px;
    background-color: rgba(250,250, 250, 0.5);
    font-size: 17px;
    font-family: Calibri;
}

#btnn1{
    width: 150px;
    height: 40px;
    background: #0000FF;
    border: 2px solid #0000FF;
    margin-left: 350px;
    color: #fff;
    font-size: 17px;
    font-family: Arial;
    font-weight: bold;
    border-bottom-right-radius: 20px;
    border-bottom-left-radius: 20px;
    border-top-right-radius: 20px;
    border-top-left-radius: 20px;
    transition: 0.2s ease;
    cursor: pointer;
}

.bgimage {
    width: 100%;
    background: linear-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%), url('Images/Image02.jpg');
    background-position: center;
    background-size: cover;
    height: 150vh;
}
</style>
</head>
<body>
<div class="bgimage">
<table border="0" width="100%" height = "50px" bgcolor="black">
	<tr>
	<td>
		<img src="<%=request.getContextPath()%>/Images/MusicLogo.png" style="width: 350px; margin-left: 530px;">
	</td>
	</tr>
</table><br><br>
<table border="0" width="100%" height="200px" class="sTbl">
	<tr>
	<td>
		<img src="<%=request.getContextPath()%>/Images/Image20.png" style="width: 250px; margin-left: 300px;">
	</td>
	</tr>
	<tr>
	<td>
		<h1 align="center">Registration Successful!</h1><br>
		<a href="Login.jsp"><input type="button" id="btnn1" value="Login" /></a>
	</td>
	</tr>
</table>
</div>
</body>
</html>