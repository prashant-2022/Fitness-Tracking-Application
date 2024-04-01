<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TrackFitPro</title>
<style>

    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    body{
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }
    header{
        position: fixed;
        top: 0;
        left: 0;
        padding: 20px 10%;
        width: 100%;
        display: flex;
        justify-content: space-between;
        align-items: center;
        z-index: 100;
        border-bottom: 1px solid;
        background-color: white;
        background-image: linear-gradient(180deg, #D3D3D3, #808080);
    }
    .logo{
        font-size: 25px;
        color: black;
        font-weight: 600;
    }
    .navbar {
      
    }
    .navbar a{
        font-size: 18px;
        color: black;
        text-decoration: none;
        font-weight: 500;
        margin-left: 20px;
        transition: .2s;
    }
    .navbar a:hover {
        color: aquamarine;
    }
    .u_name{
        margin-left:50px;
        margin-right:-10px;
    }
    .u_icon{
    	border:1px solid;
    	padding:6px;
    	border-radius:20px;
    }
</style>
<script src="https://kit.fontawesome.com/efe4c1785b.js" crossorigin="anonymous"></script>
</head>
<body>

<header>
    <label class="logo">TrackFitPro</label>
    <nav class="navbar">
        <a href="UserHome.jsp" class="Home">HOME</a>
        <a href="/Tracker1">Tracker</a>
        <a href="/Plans">Workout Plan</a>
        <a href="/chart">Progress</a>
        <a href="#" onclick="logoutWithDelay()">Logout</a>  
        <span class="u_name"> <%= (String) session.getAttribute("name") %> <span class="u_icon"><i class="fa-solid fa-user"></i></span></span>
    </nav>
</header>

<script>
function logoutWithDelay() {
    setTimeout(function() {
        window.location.href = '/logout';
    }, 400); 
}
</script>

</body>
</html>
