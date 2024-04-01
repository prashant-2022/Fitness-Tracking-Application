<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="ISO-8859-1">
    <title>Chart</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
     <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        #chart-container {
            width: 50%; 
            margin: 100px auto; 
            display: block;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

      
        canvas {
            width: 100%;
            height: auto;
        }
       
    </style>
</head>
<body>
    <%@include file="UserNavbar.jsp" %>
    <div id="chart-container">
    	<canvas id="myChart" width="800" height="400"></canvas> 
	</div>
    <c:forEach var="data" items="${chartData}">
       <c:set var="dates" value="${dates},${data.date}" />
       <c:set var="values" value="${values},${data.weight}" /> 
	   <c:set var="intakeValues" value="${intakeValues},${data.calorie_Intake}"  />
    </c:forEach>

    <script>
        var dates = "${dates}".split(",").filter(Boolean); 
        var values = "${values}".split(",").filter(Boolean); 
        var intakeValues = "${intakeValues}".split(",").filter(Boolean);
        
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: dates,
                datasets: [{
                    label: 'Weight (kg)',
                    data: values,
                    fill: false,
                    borderColor: 'rgb(75, 192, 192)',
                    tension: 0.1
                },
                {
                    label: 'Calorie Intahe ',
                    data: intakeValues,
                    fill: false,
                    borderColor: 'rgb(255,0,0)',
                    tension: 0.1
                }
                ]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
</body>
</html>
