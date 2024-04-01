<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar Example</title>
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
        }
       
        .logo{
            font-size: 25px;
            color: black;
            font-weight: 600;
         
        }
        .navbar {
    		<!-- margin-left: auto; /* Align navbar links to the right */ -->
    		
		}
        .navbar a{
            font-size: 18px;
            color: black;
            text-decoration: none;
            font-weight: 500;
            margin-left: 20px;
            transition: .2s;
        }
        
        .navbar a:hover
        {
            color: aquamarine;
        }
        
        section {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            position: fixed;
            top: 0px; 
            width: 100%;
            margin-top: 10px;
            padding: 20px;
        }

        section > div {
            flex: 1;
        }
        
        div {
          <!--  border:1px solid; -->
        }
        
        section > div:first-child {
            margin-right: 20px;
            padding-left: 200px;
        }

        h6 {
            color: #888;
            font-size: 25px;
            margin: 7px 0 10px;
        }

        h1 {
            color: #333;
            font-size: 65px;
            margin: 2px;
        }

        p {
            color: #666;
            font-size: 18px;
            margin: 15px 0;
        }

        .start-btn {
            background-color: #007bff;
            color: #fff;
            padding: 13px 23px;
            text-decoration: none;
            border-radius: 20px;
            display: inline-block;
            margin-top: 20px;
        }
		.start-btn:hover {
    		background-color: #0056b3; 
		}
        img {
            max-width: 100%;
            height: auto;
            display: block;
        }

        .image-model {
            margin-top: 50px;
            margin-bottom: 20px;
        }

        @media screen and (max-width: 768px) {
            section {
                flex-direction: column;
                text-align: center;
            }

            section > div:first-child {
                margin: 0;
            }
        }
</style>
</head>
<body>

<header>
    <label class="logo">TrackFitPro</label>
    <nav class="navbar">
      <!--    <a href="index.jsp" class="Home">HOME</a> -->
        <a href="UserLogin.jsp">Login</a>
        &nbsp; &nbsp; |
        <a href="UserRegister.jsp">SignUp</a>
       <!--   <a href="UserLogin.jsp">Exercise</a> -->
    </nav>
</header>
<section>
    <div class="content">
        <h6>#1 Fitness Tracking Application</h6>
        <h1>Reach Your Goals</h1>
        <h1>With TrackFitPro</h1>
        <p>Your Journey to Fitness Starts Here!</p>
        <a href="UserRegister.jsp" class="start-btn">START TODAY > </a>
    </div>
    <div class="image-model">
        <img alt="Running model" src="images/FTA_Model.png">
    </div>
</section>
<footer>

</footer>

</body>
</html>
