<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f2f2f2;
    
       background-image: url("images/workout_bg.jpeg");
            background-repeat: no-repeat;
  			background-size: cover;
  			position:relative;
  			
}


  .container {
        max-width: 800px;
        max-height:520px;
        margin-top: 20px;
        margin-bottom:400px;
        margin-left:100px;
        opacity:0.9;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        animation: fadeIn 1s ease;
        position :fixed;
        overflow: auto;
        scrollbar-width: none;
    }

h1{
	margin-top:80px;
	margin-left:300px;
	color:white;
}

table {
    width: 100%;
    border-collapse: collapse;
    
}


th, td {
    padding: 10px;
    text-align: left;
}

th {
    background-color: gray;
    color: #fff;
}
.intro{
	background-color:DodgerBlue;
}
tr:nth-child(even) {
    background-color: #f2f2f2;
}


table, th, td {
    border: none;
}
th,td {
    border: 1px solid #ddd;
    border-radius: 8px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1);
    background-color: #gray;
    margin:0 5px;
}
.card{
	  max-width: 100%;
        margin-top: 10px;
        margin-bottom:10px;
        margin-left:20px;
        margin-right:20px;
       padding-right:-90px;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        animation: fadeIn 1s ease;
}



@media screen and (max-width: 600px) {
    table {
        width: 100%;
    }
    th, td {
        display: block;
        width: 100%;
    }
    tr {
        margin-bottom: 15px;
    }
}

	
</style>
</head>
<body>
<%@include file="UserNavbar.jsp" %>
	
		
		<h1>Workout Split</h1>
	<div class="container">
<c:choose>
    <c:when test="${userFitnessInfo.goal == 'Weight_gain'}">
   
	<div class="card">
	<table>
		<tr >
			<th colspan="5" class="intro">Monday <p>Chest & Triceps</p></th>
		</tr>
		<tr>
			<th>Bench Press</th>
			<th>Incline Dumbell Press</th>
			<th>Chest Flyes</th>
			<th>Tricep Dips </th>
			<th>Tricep Pushdowns</th>
		</tr>
		<tr>
			<td>4 * 6-8</td>
			<td>3 * 8-10</td>
			<td>3 * 10-12</td>
			<td>3 * 8-10</td>
			<td>3 * 10-12</td>
			
		</tr>
		</table>
		</div>
		
		<div class="card">
		<table>
			<tr>
			<th colspan="5" class="intro">Tuesday <p>Back & Biceps</p></th>
		</tr>
		<tr>
			<th>Pullups</th>
			<th>Bent Over Rows</th>
			<th>Lat Pulldowns</th>
			<th>Barbell curls</th>
			<th>Hammer curls</th>
		</tr>
		<tr>
			<td>4 * 6-8</td>
			<td>4 * 6-8</td>
			<td>3 * 8-10</td>
			<td>3 * 8-10</td>
			<td>3 * 10-12</td>
			
		</tr>
		</table>
		</div>
		
			
		<div class="card">
		<table>
		<tr>
			<th colspan="5" class="intro">Wednesday  <p>Rest or Active Recovery</p></th>
		</tr>
		</table>
			</div>
			<div class="card">
			<table>
		<tr>
			<th colspan="5" class="intro">Thursday <p>Shoulders & Abs</p></th>
		</tr>
		<tr>
			<th>Overhead Press</th>
			<th>Lateral Raises</th>
			<th>Front raises</th>
			<th>Shrugs</th>
			<th>Planks</th>
		</tr>
		<tr>
			<td>4 * 6-8</td>
			<td>3 * 10-12</td>
			<td>3 * 10-12</td>
			<td>3 * 10-12</td>
			<td>3 * 30-60sec</td>
			
		</tr> 
		</table>
		</div>
		
		<div class="card">
		<table>
		<tr>
			<th colspan="5" class="intro">Friday <p>Legs</p></th>
		</tr>
			<tr>
			<th>squats</th>
			<th>Deadlifts</th>
			<th>Leg Press</th>
			<th>Leg Curls</th>
			<th>Calf Raises</th>
		</tr>
		<tr>
			<td>4 * 6-8</td>
			<td>3 * 10-12</td>
			<td>3 * 10-12</td>
			<td>3 * 10-12</td>
			<td>3 * 30-60sec</td>
			
		</tr> 
		</table>
		</div>
		<div class="card">
		<table>
		<tr>
			<th colspan="5" class="intro">Saturday <p>Rest or Active Recovery</p></th>
		</tr>
		</table>
				</div>
	</c:when>
	
    <c:when test="${userFitnessInfo.goal == 'Weight_maintain'}">
	<div class="card">
	<table>
		<tr >
			<th colspan="5" class="intro">Monday <p>Strength & Cardio</p></th>
		</tr>
		<tr>
			<th>Bench Press</th>
			<th>Deadlift</th>
			<th>Running</th>
			
		</tr>
		<tr>
			<td>3 * 8-10</td>
			<td>3 * 8-10</td>
			<td>20-30 minutes</td>
			
			
		</tr>
		</table>
		</div>
		
		<div class="card">
		<table>
			<tr>
			<th colspan="5" class="intro">Tuesday <p>Active Recovery</p></th>
		</tr>
		<tr>
			<th>Yoga  or Pilates</th>
			<th>Walking</th>
			
		</tr>
		<tr>
			<td></td>
			<td>30-45 minutes</td>
			
			
		</tr>
		</table>
		</div>
		
			
		<div class="card">
		<table>
		<tr>
			<th colspan="5" class="intro">Wednesday  <p>Full Body Strength</p></th>
		</tr>
		<tr>
			<th>Squats</th>
			<th>Pull-ups</th>
			<th>Push-ups</th>
			
		</tr>
		<tr>
			<td>3 * 8-10</td>
			<td>3 * 8-10</td>
			<td>3 * 8-10</td>
			
			
		</tr> 
		
		</table>
			</div>
			<div class="card">
			<table>
		<tr>
			<th colspan="5" class="intro">Thursday <p>Cardio</p></th>
		</tr>
		<tr>
			<th>Sweamming</th>
			<th>Cycling</th>
			
		</tr>
		<tr>
			<td>30-45 minutes</td>
			<td>30-45 minutes</td>
			
			
		</tr> 
		</table>
		</div>
		
		<div class="card">
		<table>
		<tr>
			<th colspan="5" class="intro">Friday <p>Active Recovery</p></th>
		</tr>
			<tr>
			<th>Hiking</th>
			
		</tr>
		<tr>
			<td>60 minutes</td>
			
			
		</tr> 
		</table>
		</div>
		<div class="card">
		<table>
		<tr>
			<th colspan="5" class="intro">Saturday <p>Rest </p></th>
		</tr>
		</table>
				</div>
		</c:when>
	
	
    <c:when test="${userFitnessInfo.goal == 'Weight_loss'}">
	<div class="card">
	<table>
		<tr >
			<th colspan="5" class="intro">Monday <p>Full Body Strength</p></th>
		</tr>
		<tr>
			<th>Squats</th>
			<th>Push-ups</th>
			<th>Bent over rows</th>
			<th>Plank</th>
			
		</tr>
		<tr>
			<td>3 * 10-12</td>
			<td>3 * 10-12</td>
			<td>3 * 10-12</td>
			<td>3 * 30-60 sec</td>
			
			
		</tr>
		</table>
		</div>
		
		<div class="card">
		<table>
			<tr>
			<th colspan="5" class="intro">Tuesday <p>Cardio</p></th>
		</tr>
		<tr>
			<th>Jogging / Running</th>
			<th>Cycling</th>
			<th>Swimming</th>
			
		</tr>
		<tr>
			<td>30-45 minutes</td>
			<td>30-45 minutes</td>
			<td>30-45 minutes</td>
			
			
		</tr>
		</table>
		</div>
		
			
		<div class="card">
		<table>
		<tr>
			<th colspan="5" class="intro">Wednesday  <p>Rest or Active Recovery</p></th>
		</tr>
		</table>
			</div>
			<div class="card">
			<table>
		<tr>
			<th colspan="5" class="intro">Thursday <p>Full Body Strength</p></th>
		</tr>
		<tr>
			<th>Lunges</th>
			<th>Dumbell Chest Press</th>
			<th>Lat Pulldowns</th>
			<th>Russian Twists</th>
			
		</tr>
		<tr>
			<td>3 * 10-12/leg</td>
			<td>3 * 10-12</td>
			<td>3 * 10-12</td>
			<td>3 * 10-12/side</td>
			
			
		</tr> 
		</table>
		</div>
		
		<div class="card">
		<table>
		<tr>
			<th colspan="5" class="intro">Friday <p>Cardio</p></th>
		</tr>
			<tr>
			<th>HIIT(High-Intensity Interval Training)</th>
			
		</tr>
		<tr>
			<td>20-30 minutes</td>
			
			
		</tr> 
		</table>
		</div>
		<div class="card">
		<table>
		<tr>
			<th colspan="5" class="intro">Saturday <p>Rest or Active Recovery</p></th>
		</tr>
		</table>
				</div>
</table>
	 </c:when>
	</c:choose>
	</div>
</body>
</html>