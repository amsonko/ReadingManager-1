<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="inc/CSSManager.css"/>
<title>Connexion</title>
</head>

<body>

	<form method="post" action="ConnexionTreatment">
		<div id="Tittle">
			<h1>Connexion to Reading Manager</h1>
		</div>

		<fieldset>
			<legend>Information</legend>
			<div>
				<div>
					<label class="labelWidth80">E-mail :</label><input type="text"
						name="tbMail">
				</div>
				<div>
					<label class="labelWidth80">Password :</label><input type="text"
						name="tbPassword">
				</div>
				<div>
					<p class="requis">
						<!-- Error fields positions -->
						${loginFailed} 
						${missingFields}
						<!-- Error fields RAZ -->
						<%
							session.setAttribute("loginFailed", "");
							session.setAttribute("missingFields", "");
						%>
					</p>
				</div>
			</div>
		</fieldset>

		<div id="Treatment">
			<div>
				<input type="submit" value="CONNEXION" id="btnSend">
			</div>
		</div>
	</form>
</body>


</html>