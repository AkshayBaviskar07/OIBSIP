<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="game.GameNumber" %>

<%
	GameNumber guess = new GameNumber(Integer.parseInt(request.getParameter("guess")));

	GameNumber minimum = new GameNumber(Integer.parseInt(request.getParameter("minimum")));
	
	GameNumber maximum = new GameNumber(Integer.parseInt(request.getParameter("maximum")));
	
	GameNumber target = new GameNumber(Integer.parseInt(request.getParameter("target")));
	
	GameNumber guesses = new GameNumber(Integer.parseInt(request.getParameter("guesses")));
	
	String msg = "";
	
	if(guess.getValue() == target.getValue()){
		msg="Congrats! you find the right answer in " +guesses.getValue()+ " guesses";
	} 
	else{
		guesses.increment();
		
		if(guess.getValue() < target.getValue()){
			msg = "You guessed lower number";
		} 
		else{
			msg = "You guessed higher number";
		}
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	    <meta charset="UTF-8">	
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="style.css">
		<title>Guess the number</title>
	</head>
	
	<body>
		<div class="container">
			<header class="header">
				<h1>Guess The Number</h1>
			</header>
			
			<main class="form">
			<div class="message">
					<%= msg %>
			</div>
				
				<%
					if(guess.getValue() == target.getValue()){
					
				%>
						<br><a class="link" href="index.jsp"> Play Again</a>
				 <%	} else{
				
				 %>
				 
					 <form name="guessForm" action="guess.jsp" method="post">
						<label class="label-form"> 
							Guess <%= guesses.getValue() %>:
						</label>
						<input type="number" name="guess" value="0" /><br>
		
						<button type="submit"> Ok </button>
						
						<input class="input-form" type="hidden" name="minimum" value="<%= minimum.getValue() %>" />
						<input class="input-form" type="hidden" name="maximum" value="<%= maximum.getValue() %>"/>
						<input class="input-form" type="hidden" name="target" value="<%= target.getValue() %>"/>
						<input class="input-form" type="hidden" name="guesses" value="<%= guesses.getValue() %>"/>
					</form>
				<%
					}
				%>
			</main>
		</div>
	</body>
</html>



















