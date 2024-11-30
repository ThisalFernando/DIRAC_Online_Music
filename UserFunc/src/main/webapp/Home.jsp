<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to DiRAC Online Music</title>
<link rel="stylesheet" type="text/css" href="Styles/Home.css" />
<link rel="stylesheet" type="text/css" href="Styles/UpdateUser.css" />
<link rel="stylesheet" type="text/css" href="Styles/Login.css" />
<style>
        .bgimage {
            width: 100%;
            background: linear-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%), url('Images/Image03.jpg');
            background-position: center;
            background-size: cover;
            height: 340vh;
        }
</style>
</head>
<body>
<div class="bgimage">

<div class="bgimage">
        <div class="tbl1">
            <table border="0" width="100%">
                <tr>
                    <td>
                        <div class="img03"><a href="User_Details.jsp"><img src="<%=request.getContextPath()%>/Images/Image04.png" width= "100px"/></a></div>
                    </td>
                    <td>
                        <div class="welcome">
                            <h1>Welcome Back, Good evening!</h1>
                            
                        </div><br />
                    </td>
                    <td>
                        <div class="logo" align="right"><img src="<%=request.getContextPath()%>/Images/MusicLogo.png" height="150px"/></div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="navbar"></div>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="Search.jsp">Search</a></li>
                            <li><a href="Payments.jsp">Activate Premium</a></li>
                            <li><a href="Albums.jsp">Albums</a></li>
                            
                        </ul>
                        </div>
                    </td>
                    <td>
                        <a href="Logout.jsp"><button id="bttn2" style="margin-left: 550px; width: 100px;">Log out</button></a>
                    </td>
                </tr>
        </table>
    </div>
    
    <br /><br />
    <!-- Slideshow container -->
    <div class="slideshow-container">

        <!-- Full-width images with number and caption text -->
        <div class="mySlides fade">
            <div class="numbertext">1 / 3</div>
            <div class="text">All MUSIC ON YOUR PALM</div><br /><span class="text3"><span class="maintxt">ANY SONG</span><br>at<br /><span class="maintxt">ANY TIME<br></span></span>
            <img src="<%=request.getContextPath()%>/Images/Image05.jpg" style="width: 100%; height: 400px;">
        </div>

        <div class="mySlides fade">
            <div class="numbertext">2 / 3</div>
            <div class="text">All MUSIC ON YOUR PALM</div><br /><span class="text3"><font color="white">Search<br />Your Music</font><br><span class="maintxt">ONLINE.</span></span>
            <img src="<%=request.getContextPath()%>/Images/Image06.png" style="width: 100%; height: 400px;">
        </div>
        
        <div class="mySlides fade">
            <div class="numbertext">3 / 3</div>
            <div class="text">All MUSIC ON YOUR PALM</div><br /><span class="text3"><span class="maintxt">DOWNLOAD</span><br><font color="white">And</font><br><span class="maintxt">LISTEN OFFLINE</span></span>
            <img src="<%=request.getContextPath()%>/Images/Image07.jpg" style="width: 100%; height: 400px; ">
        </div>

        <!-- Next and previous buttons -->
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>
    <br>

    <!-- The dots/circles -->
    <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
    </div><br />

    <script>
        let slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            let i;
            let slides = document.getElementsByClassName("mySlides");
            let dots = document.getElementsByClassName("dot");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
    </script>
    <div class="text">LATEST SONGS</div><br />
    <center>
        <table border="0" width="100px" class="tbl2">
            <tr>
                <td class="zoom">
                    <img class="album" src="<%=request.getContextPath()%>/Images/Image08.png" width= "200px" height= "200px"/>
                </td>
                <td class="zoom">
                    <img class="album" src="<%=request.getContextPath()%>/Images/Image09.jpg" width= "200px" height= "200px"/>
                </td>
                <td class="zoom">
                    <img class="album" src="<%=request.getContextPath()%>/Images/Image10.jpg" width= "200px" height= "200px"/>
                </td>
                <td class="zoom">
                    <img class="album" src="<%=request.getContextPath()%>/Images/Image11.jpg" width= "200px" height= "200px"/>
                </td>
                <td class="zoom">
                    <img class="album" src="<%=request.getContextPath()%>/Images/Image12.jpg" width= "200px" height= "200px"/>
                </td>
                <td class="zoom">
                    <img class="album" src="<%=request.getContextPath()%>/Images/Image13.jpg" width= "200px" height= "200px"/>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <h4 class="link2"><a href="Search.jsp">Click here </a>For More Songs</h4>
                </td>
            </tr>
        </table>
        <br>
        <div class="text">RECOMMENDED</div><br />
        <table border="0" width="100px">
            <tr>
                <td class="zoom">
                    <img class="album" src="<%=request.getContextPath()%>/Images/Image14.jpg" width= "200px" height= "200px"/>
                </td>
                <td class="zoom">
                    <img class="album" src="<%=request.getContextPath()%>/Images/Image15.jpg" width= "200px" height= "200px"/>
                </td>
                <td class="zoom">
                    <img class="album" src="<%=request.getContextPath()%>/Images/Image16.jpg" width= "200px" height= "200px"/>
                </td>
                <td class="zoom">
                    <img class="album" src="<%=request.getContextPath()%>/Images/Image17.jpg" width= "200px" height= "200px"/>
                </td>
                <td class="zoom">
                    <img class="album" src="<%=request.getContextPath()%>/Images/Image18.jpg" width= "200px" height= "200px"/>
                </td>
                <td class="zoom">
                    <img class="album" src="<%=request.getContextPath()%>/Images/Image19.jpg" width= "200px" height= "200px"/>
                </td>
            </tr>
        </table>
        <br><br>
        <hr style="width: 1000px;"><br>
        <div class="text">YOUR PROFILE</div>
        
        <%-- Display user details --%>
        <c:forEach var="usr" items="${userDetails}" >
	
	<c:set var="id" value="${usr.id}"/>
	<c:set var="uname" value="${usr.userName}"/>
	<c:set var="email" value="${usr.email}"/>
	<c:set var="pwd" value="${usr.password}"/>
	
	<br><br>
	<table border="0" width="100%" class="utbl">
		<tr>
		<td>
			User ID: <span style="margin-left: 260px;">${usr.id}</span><br><br>
		</td>
		</tr>
		<tr>
		<td>
			Username: <span style="margin-left: 235px;">${usr.userName}</span><br><br>
		</td>
		</tr>
		<tr>
		<td>
			Email: <span style="margin-left: 275px;">${usr.email}</span><br><br>
		</td>
		</tr>
		<tr>
		<td>
			Password: <span style="margin-left: 245px;">${usr.password}</span><br><br><br>
		</td>
		</tr>
		<tr>
		<td>
			
		</td>
		</tr>
	</table>
		
	</c:forEach>
	<br><br>
	<c:url value="UpdateUser.jsp" var="userupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="uname" value="${uname}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="pwd" value="${pwd}"/>
	</c:url>
	
	<a href="${userupdate}">
		<input id="bttn2" type="button" name="update" value="Update my data" style="width: 200px;  margin-left: 5px;">
	</a>
	
	<c:url value="DeleteUser.jsp" var="userdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="uname" value="${uname}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="pwd" value="${pwd}"/>
	</c:url>
	<a href="${userdelete}">
	<input id="bttn2" type="button" name="delete" value="Delete my Account" style="width: 200px;  margin-left: 200px;">
	</a>
	<br><br>
	
	<table border="0" width="100%" height = "50px" bgcolor="black">
	<tr>
	<td>
		<div class="head"><img src="<%=request.getContextPath()%>/Images/MusicLogo.png" width="350px"></div>
	</td>
	</tr>
</table>
        
</div>
</body>
</html>