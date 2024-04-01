<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Experience</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
             background-image: url("images/Fit_bg.jpg");
            background-repeat: no-repeat;
  			background-size: cover;
  			position:relative;
        }
        h1{
        	position:absolute;
        	font-size: 70px;
        	top:150px;
        	left:100px;
        	color:white;
        	 opacity: 0.6;
        }
        form {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 400px;
            margin: 20px auto;
            margin-left:60%;
             opacity: 0.9;
        }
        
        input[type="text"],
        input[type="date"],
        button,select {
            display: block;
            width: calc(100% - 20px);
            margin: 4px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        
        input[type="text"],
        input[type="date"] {
            box-sizing: border-box;
        }
        
        button {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }
        
        button:hover {
            background-color: #0056b3;
        }
        
        label {
            font-size: 16px;
            margin-bottom: 5px;
            display: block;
        }
    </style>
</head>
<body>
	<h1>Track today's progress <br>  towards tomorrow's <br> success!</h1>
    <c:set var="userFitnessInfo" value="${userFitnessInfo}" />

<form action="/edit/${userFitnessInfo.fitnessInfo_id}" method="post">
    <input type="hidden" name="fitnessInfo_id" value="${userFitnessInfo.fitnessInfo_id}" readonly style="background-color: #E0E0E0">
    <br><br>
   
    
    <input type="text" name="age" placeholder="Age" value="${userFitnessInfo.age}" required><br>
    <input type="text" name="gender" placeholder="Gender" value="${userFitnessInfo.gender}" required><br>
    <input type="text" name="height" placeholder="Height" value="${userFitnessInfo.height}" required><br>
    <input type="text" name="weight" placeholder="Weight" value="${userFitnessInfo.weight}" required><br>
    <input type="text" name="neck" placeholder="Neck" value="${userFitnessInfo.neck}" required><br>
    <input type="text" name="waist" placeholder="Waist" value="${userFitnessInfo.waist}" required><br>
            
    <select id="activity" name="activity">
        <option value="" disabled selected>Select Active status</option>
        <option value="inactive" ${userFitnessInfo.activity == 'inactive' ? 'selected' : ''}>Inactive</option>
        <option value="low" ${userFitnessInfo.activity == 'low' ? 'selected' : ''}>Low</option>
        <option value="moderate" ${userFitnessInfo.activity == 'moderate' ? 'selected' : ''}>Moderate</option>
        <option value="high" ${userFitnessInfo.activity == 'high' ? 'selected' : ''}>High</option>
    </select><br>
    
    <select id="goal" name="goal">
        <option value="" disabled selected>Select Your Goal</option>
        <option value="Weight_gain" ${userFitnessInfo.goal == 'Weight_gain' ? 'selected' : ''}>Weight_gain</option>
        <option value="Weight_maintain" ${userFitnessInfo.goal == 'Weight_maintain' ? 'selected' : ''}>Weight_maintain</option>
        <option value="Weight_loss" ${userFitnessInfo.goal == 'Weight_loss' ? 'selected' : ''}>Weight_loss</option>
    </select><br>

    <button type="submit">Update</button>
</form>

</body>
</html>