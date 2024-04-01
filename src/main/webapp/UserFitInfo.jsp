<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Fitness Information</title>
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

        .wrapper {
            background-color: #fff;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width:60%;
        }
		.box{
			display:flex;
			 box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
		}
		form{
		width:350px;
		  margin-left:70px;
	}
		img{
		width:430px;
		margin-left:70px;
		
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
		select{
			 width: 100%;
            padding: 10px;
            margin-bottom: 13px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
		}
      
		.back{
   			display: inline-block;
    		background-color: white;
            color: #007bff;
            width:100px;
            border: 1px solid #007bff;
            text-decoration:none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
		}
		  .submit {
            display: inline-block;
    		background-color: #007bff;
            color: white;
            width:135px;
            height:40px;
            border: 1px solid #007bff;
            text-decoration:none;
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
</head>
<body>
    <div class="wrapper">
     <div class="box">
       <form action="UserFitInfo" method="post">
            <h2>Add Information</h2>
            <input type="text" name="age" placeholder="Age" required><br>
            <input type="text" name="gender" placeholder="Gender" required><br>
            <input type="text" name="height" placeholder="Height" required><br>
            <input type="text" name="weight" placeholder="Weight" required><br>
            <input type="text" name="neck" placeholder="Neck" required><br>
            <input type="text" name="waist" placeholder="Waist" required><br>
            
             <select id="activity" name="activity">
        		<option value="" disabled selected>Select Active status</option>
        		<option value="inactive">Inactive</option>
        		<option value="low">Low</option>
        		<option value="moderate">Moderate</option>
        		<option value="high">High</option>
    		</select><br>
    		<select id="goal" name="goal">
        		<option value="" disabled selected>Select Your Goal</option>
        		<option value="Weight_gain">Weight_gain</option>
        		<option value="Weight_maintain">Weight_maintain</option>
        		<option value="Weight_loss">Weight_loss</option>
    		</select><br>
    		<a href="UserRegister.jsp" class="back">Back</a>
    		<button type="submit" class="submit">Submit</button>
          <!--    <a type="submit" class="submit">Submit</a>  -->
            <p>Already have an account? <a href="UserLogin.jsp">Login</a></p>
        </form>
        <img alt="fitness-model" src="images/signup_model.png">
        </div>
    </div>
</body>
</html>
