<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	 body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
        
    }
    .container {
        max-width: 1200px;
        margin: 90px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        animation: fadeIn 1s ease;
    }
    
    .container {
    margin:80px auto;
    width: 50%;
}

.track-box {
    background-color: #f0f0f0;
    padding: 20px;
    margin-bottom: 20px;
    text-align: center;
}

.total-calories {
    margin-top: 0;
}

.calories-form {
    background-color: #f9f9f9;
    padding: 20px;
}

.input-field {
    margin-bottom: 10px;
    width: 100%;
    padding: 8px;
    box-sizing: border-box;
}

.calculate-btn {
    background-color: #4caf50;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
    width: 100%;
}

.calculate-btn:hover {
    background-color: #45a049;
}
    
    
      
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
    
    <!-- ------------------------------------------------ -->

.track-box {
    background-color: #f5f5f5; 
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); 
}


.track-box h1 {
    margin: 0 0 10px;
    font-size: 24px;
    color: #333; 
}


label {
    font-weight: bold;
    color: #555; 
}


input[type="text"], input[type="number"] {
    width: calc(100% - 22px); 
    padding: 12px; 
    margin-bottom: 20px;
    border: 1px solid #ddd; 
    border-radius: 6px;
    background-color: #fff; 
    box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1); 
}


input[type="text"]::placeholder,
input[type="number"]::placeholder {
    color: #999; 
}


button[type="submit"] {
    background-color: #007bff; 
    color: #fff; 
    border: none;
    padding: 15px 30px; 
    cursor: pointer;
    border-radius: 6px;
    font-size: 16px;
    transition: background-color 0.3s; 
}


button[type="submit"]:hover {
    background-color: #0056b3;
}


    
</style>
</head>
<body>
    <%@include file="UserNavbar.jsp" %>
    <div class="container">
        <div class="track-box">
            <h1>Goal Calories: ${goalCalories}</h1>
            <h1>Intake Calories: ${intakeCalories}</h1>
        </div>
        <form action="/Tracker" method="post">
            <label for="dailyIntake">Daily Intake Calories:</label>
            <input type="text" name="dailyIntake" id="dailyIntake" required>
            <label for="burnedCalories">Burned Calories:</label>
            <input type="text" name="burnedCalories" id="burnedCalories" required>
            <button type="submit">Calculate Total Calories</button>
        </form>
    </div>
</body>
</html>