<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Fitness Information</title>
<style>
   
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
        background-image: url("images/running.png");  
        background-position:right;
        background-repeat: no-repeat;
        background-size: cover;
    }
    .mrq{
    	 margin-left:30px;
    margin-right:45%;
    }
    .heading-top{
    	margin-top:90px;
   color:white;
    margin-left:50px;
    font-family: 'Lucida Sans', Arial, sans-serif;
    font-size:35px;	

    }
    .container {
        max-width: 900px;
        margin-top: 40px;
        margin-bottom:30px;
        margin-left:20px;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        animation: fadeIn 1s ease;
       
    }
    <!-- 
.div-wrapper {
    display: flex;
    justify-content: space-between; 
	
}

.outer {
    border:2px solid;
    position:relative;
    width:800px;
   
    margin:50px 10px;
    height:250px;
    top:30px;
}

.inner {
     border:1px solid;
    position:absolute;
    right:50px;
    width:200px;
    height:100px;
    top:-40px;
    z-index:99;
    background-color: #fff;
}

-->


table {
    border-collapse: separate;
    width: 100%;
    border-spacing: 3px; 
}


th {
    background-color: #f2f2f2;
    text-align: left;
    padding: 12px;
}


td {
    padding: 12px;
}


th,td {
    border: 1px solid #ddd;
    border-radius: 8px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1);
    background-color: #fff;
    margin:0 5px;
}
  <!-- ------------------------Overlap design  -->
    .div-wrapper {
    display: flex;
    justify-content: space-between;
}

.outer {
    position: relative;
    height: 200px;
    width: 250px;
    background-color: #f0f0f0;
    border-radius: 10px;
    padding: 20px;
    box-sizing: border-box;
    padding-top:60px;
    padding-left:80px;
}

.inner {
    position: absolute;
    top: -10;
    left: 50%;
    transform: translateX(-50%);
    background-color: #ffffff;
    padding: 10px;
    
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    text-align: center;
}

 h2 {
    margin-top: 15px;
}

h1 {
    font-size: 24px;
    color: #333333;
     
}

h2 {
    font-size: 18px;
    color: #555555;
}


    
    
    <!-- -----------------over lap design end  -->
    .delete-btn {
        display: inline-block; 
        padding: 8px 12px; 
        background-color: #dc3545; 
        color: #ffffff; 
        text-decoration: none; 
        border-radius: 4px; 
        transition: background-color 0.3s ease; 
    }
    .delete-btn:hover {
        background-color: #c82333; 
        color: #ffffff; 
    }
    h1 {
        margin-top: 40px;
        font-size: 28px;
        color: #333;
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
    
    @media screen and (max-width: 768px) {
        .container {
            padding: 10px;
        }
        table {
            font-size: 14px;
        }
        h1 {
            font-size: 24px;
        }
    }
</style>
</head>
<body>
<%@include file="UserNavbar.jsp" %>

<marquee behavior="alternate" class="mrq"><h1 class="heading-top">Empower Yourself with Health Matrics</h1></marquee>
<div class="container">
    <table>
        <tr>
            <th>AGE</th>
            <th>HEIGHT</th>
            <th>WEIGHT</th>
            <th>NECK</th>
            <th>WAIST</th>
            <th>GENDER</th>
            <th>ACTIVITY</th>
            <th>GOAL</th>
            <th>ACTION</th>
        </tr>
       
            <tr>
                <td>${userData.userFitnessInfo.age}</td>
        <td>${userData.userFitnessInfo.height}</td>
        <td>${userData.userFitnessInfo.weight}</td>
        <td>${userData.userFitnessInfo.neck}</td>
        <td>${userData.userFitnessInfo.waist}</td>
        <td>${userData.userFitnessInfo.gender}</td>
        <td>${userData.userFitnessInfo.activity}</td>
        <td>${userData.userFitnessInfo.goal}</td>
  
				<td><a href="<c:url value='/${userData.userFitnessInfo.fitnessInfo_id}'/>"  class="delete-btn" >Edit</a></td>
            </tr>
      
    </table>
    <div class="div-wrapper">
    <div class="outer">
   
 <h1> ${userData.bmi}</h1>
   
    	<div class="inner">
    		<h2>BMI <br> (Body Mass Index)</h2>
    		
    	</div>
    </div>
     <div class="outer">
    <h1> ${userData.Body_fat}%</h1>
   
    <div class="inner">
    		<h2>Body Fat <br> Percentage %</h2>
    	</div>
    </div> 
   <div class="outer">
    <h1>${userData.M_calorie}</h1>
    <div class="inner">
    		<h2>Maintenance <br> Calories </h2>
    	</div>
    </div>
    
    </div>
   
</div>
</body>
</html>
