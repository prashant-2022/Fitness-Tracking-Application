<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
	img{
		width:430px;
		margin-right:70px;
		
	}
	
	form{
		width:350px;
		  
	}
        .wrapper {
            background-color: #fff;
            padding: 20px;
            padding-right:-10px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width:60%;
            
        }
		.box{
			display:flex;
			 box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
		}
        h2 {
            margin-bottom: 20px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 13px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button {
            background-color: #007bff;
            color: #fff;
            width:150px;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        p {
            margin-top: 10px;
        }

        p a {
            color: #007bff;
            text-decoration: none;
        }

        p a:hover {
            text-decoration: underline;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>
<body>
    <div class="wrapper">
       <div class="box">
     	<img alt="signup_model" src="images/signup_model.png">
       <form action="UserRegister" method="post" onsubmit="return validateForm()">
            <h2>Register</h2>
            <input type="text" name="first_name" pattern="^[A-Za-z]+$" title="Name must contain only letters" placeholder="First Name" required><br>
            <input type="text" name="last_name" pattern="^[A-Za-z]+$" title="Name must contain only letters" placeholder="Last Name" required><br>
            <input type="text" name="Contact" pattern="^[0-9]{10}$" title="Phone must contain only 10 digits" placeholder="Contact" required><br>
            <input type="text" name="Address" placeholder="Address" required><br>
            <input type="email" name="email" placeholder="Email" required><br>
            <input type="password" name="password" id=password pattern="(?=.*\d)(?=.*[A-Za-z]).{5,}"
   title="Must contain at least one number, one letter, 5 or more characters" placeholder="Password" required><br>
            <input type="password" name="cnfpassword" id=cnfPassword  placeholder="Confirm Password" required><br>
            <button type="submit">NEXT</button><br>
            <p>Already have an account? <a href="UserLogin.jsp">Login</a></p>
        </form>
        </div>
    </div>
    <script>
        function validateForm() {
            var password = document.getElementById("password").value;
            var cnfPassword = document.getElementById("cnfPassword").value;
            if (password !== cnfPassword) {
              
                Swal.fire("Error!", "Passwords do not match.", "error");
                return false; 
            }
            return true; 
        }
    </script>
</body>
</html>
