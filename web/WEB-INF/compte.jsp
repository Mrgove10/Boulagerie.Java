<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<%@include file="head.jsp"%>

<body>
	<%@include file="header.jsp"%>
	<div class="content">
		<div>
			<form id="login" method="post" action="Compte">
				<h1>Connexion</h1>
				<fieldset id="inputs">
					<img class="connect" src="images/username.png">&nbsp;&nbsp;&nbsp;<input name="login" type="text"
						placeholder="Email" autofocus required><br />
					<img class="connect" src="images/password.png">&nbsp;&nbsp;&nbsp;<input name="pwd" type="password"
						placeholder="Mot de passe" required>
				</fieldset>
				<fieldset id="actions">
					<input type="submit" id="submit" value="Valider">&nbsp;&nbsp;&nbsp;
					<input type="reset" id="reset" value="Remise à zéro">
					<a href="Message">Mot de passe oublié ?</a>
				</fieldset>
				<fieldset id="new">
					<p>Nouveau sur le site ?
						<a href="Inscription">Créer votre compte</a></p>
				</fieldset>
			</form>
		</div>
	</div>
<%@include file="footer.jsp"%>
</body>

</html>f