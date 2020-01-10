<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<jsp:include page="head.jsp" />

<body>
	<jsp:include page="header.jsp" />
	<div class="content">
		<div>
			<div class="contact">
				<p>Mot de passe perdu...</p>
			</div>
			<div>
				<form id="login">
					<h1>Envoyer un email</h1>
					<fieldset id="inputs">
						<input id="username" type="text" placeholder="nom" autofocus required><br />
						<input id="email" type="text" placeholder="Email" autofocus required><br />
						<input id="message" type="text" placeholder="Mot de passe perdu ?" required>
					</fieldset>
					<fieldset id="actions">
						<input type="submit" id="submit" value="envoyer">
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>

</html>