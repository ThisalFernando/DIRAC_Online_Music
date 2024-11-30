<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up | DiRAC Online Music</title>
<link rel="stylesheet" type="text/css" href="Styles/SignUp.css" />
<style>

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
<table border="0" width="100%" height = "50px" bgcolor="black">
	<tr>
	<td>
		<img src="<%=request.getContextPath()%>/Images/MusicLogo.png" style="width: 350px; margin-left: 530px;">
	</td>
	</tr>
</table>
	<center>
	<div class="bgimage">
	<br/><br/>
	
	<%--Insert user details--%>
	<form action="insert" method="post">
	<h1 class="Signup">SIGN UP</h1>
	<hr><br/>
		<table border="0" width="100%">
			<tr>
			<td colspan="2">
            	<input type="text" name="uname" id="uname" placeholder="Create Username" required />
            </td>
			</tr>
			<tr>
			<td colspan="2"><br><br>
                 <input type="email" name="email" id="email" placeholder="Enter your Email Address" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" required />
            </td>
			</tr>
			<tr>
			<td colspan="2"><br><br>
                 <input type="password" name="pwd" id="pwd" placeholder="Create Password" maxlength="10" required /><br><br>
            </td>
			</tr>
			<tr>
			<td><br><br>
			<input type="submit" value="Sign Up" id="btnn1">
			</td>
			<td><br><br>
			<input type="reset" value="Reset" id="btnn1">
			</td>
			</tr>
			<tr>
                    <td colspan="2">
                        <h4 class="link1">Already have an account, <a href="Login.jsp">Log in</a></h4>
                    </td>
            </tr>
			
		</table>
	</form>
	</div>
</body>
</html>