<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login | DiRAC Online Music</title>
<link rel="stylesheet" type="text/css" href="Styles/Login.css" />
<style>
.bgimage{
    width: 100%;
    background: linear-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%), url('Images/Image01.jpg');
    background-position: center;
    background-size: cover;
    height: 120vh;
}
.logo{
	
}
</style>
</head>
<body>

<div class="bgimage">

<table border="0" width="100%" height = "50px" bgcolor="black" >
	<tr>
	<td>
		<div class="head"><img src="<%=request.getContextPath()%>/Images/MusicLogo.png" width="350px"></div>
	</td>
	</tr>
</table>
<br /><br />
  	<div class="login_dtls">
    	<fieldset>
       		<legend></legend>
                <form action="login" method="POST">
                    <center>
                        <h1 class="Login">LOG IN</h1>
                        <h5 class="txt1">Enter your Login credentials</h5>
                        
                    	<%--Get user credentials from user --%>
                        <input type="text" placeholder="   Username" name="uid" id="uid"><br /><br />
                        <input type="password" placeholder="   Password" name="pwd" id="pwd"><br /><br />
                        <label>
                            <input type="checkbox" name="remember">Remember me
                        </label><br /><br/>
                        
                        <button type="submit" id="btnn1">Log in</button>
                        <br />
                        <h5 class="txt1">If you don't have an account,</h5><br />
                        <a href="SignUp.jsp"><input type="button" id="btnn1" value="Sign up" /></a>
                    
                </form>
        </fieldset>
    </div>
</div>

</body>
</html>