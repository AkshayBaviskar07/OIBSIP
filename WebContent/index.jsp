<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="game.GameNumber" %>

<%
	//initialize the numbers for our games
	//minimum
	GameNumber minimum = new GameNumber(0);
			
	//maximum
	GameNumber maximum = new GameNumber(100);
			
	//target
	GameNumber target = new GameNumber();
	target.setRandom(minimum.getValue(), maximum.getValue());
	
	//number of guesses
	GameNumber guesses = new GameNumber(1);	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Guess the number</title>
		<link rel="stylesheet" href="style.css">
	</head>
<body>
	<div class="container">
	
		<header class="header">
			<h1> Guess The Number </h1>
			<h5> Please guess the number between <%= minimum.getValue() %> to <%= maximum.getValue() %>.</h5>
		</header>
		
		<main class="form">
			<form name="guessForm" action="guess.jsp" method="post">
				<label class="label-form"> 
					Guess <%= guesses.getValue() %>:
				</label>
				<input type="number" name="guess" value="0" /><br>
				
					<button class="btn-form" type="submit"> Ok </button>				
				
				<input class="input-form" type="hidden" name="minimum" value="<%= minimum.getValue() %>" />
				<input class="input-form" type="hidden" name="maximum" value="<%= maximum.getValue() %>"/>
				<input class="input-form" type="hidden" name="target" value="<%= target.getValue() %>"/>
				<input class="input-form" type="hidden" name="guesses" value="<%= guesses.getValue() %>"/>
			</form>
		</main>		
	</div>
</body>
</html>









