<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

    body {
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #f0f2f5;
    }
    .container{
    	display:flex;
    	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    	padding:10px;
    }
	img{
		width:500px;
		
	}
    form {
        background: white;
        padding: 20px;
        border-radius: 0px;
      	height:400px;
        width: 400px;
    }

    h1 {
        color: #333;
        font-size: 24px;
        margin-bottom: 20px;
        text-align: center;
    }

    input[type=email], input[type=password] {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    button[type=submit] {
        width: 100%;
        background-color: #007bff;
            color: #fff;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    button[type=submit]:hover {
       background-color: #0056b3;
    }

    a {
        display: inline-block;
        color: #0645AD;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }
    p{
    	margin-left:80px;
    }
</style>

</head>
<body>
	<div class="container">
		<img alt="fitness-model" src="images/login_model.jpeg">
		<form action="/UserLogin" method="post">
			<h1>Sign In</h1>
			Email : <input type="email" name=email placeholder="Email" required><br><br>
			Password : <input type="password" name=password placeholder="Password" required><br><br>
			<button type="submit">Login</button> <br><br>
			  <p>don't have an account? <a href="UserRegister.jsp">Sign Up</a></p>
		</form>
	</div>
		
</body>
</html>