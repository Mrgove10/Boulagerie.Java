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
					<img class="connect" src="images/username.png"><input name="login" type="text"
						placeholder="Email" autofocus value="${ login }">
					<c:if test="${ controller.resultat[0]==false}">
						<span class='erreur'><c:out value="L'identifiant ne peut être nulle"/></span>
					</c:if>
					<br />
					<img class="connect" src="images/password.png">&nbsp;&nbsp;&nbsp;<input name="pwd" type="password"
						placeholder="Mot de passe">
					<c:if test="${ controller.resultat[1]==false}">
						<span class='erreur'><c:out value="Le mot de passe ne peut être nulle"/></span>
					</c:if>

				</fieldset>
				<fieldset id="actions">
					<input type="submit" id="submit" value="Valider">&nbsp;&nbsp;&nbsp;
					<input type="reset" id="reset" value="Remise à zéro">
					<a href="Message">Mot de passe oublié ?</a>
				</fieldset>
				<fieldset id="new">
				<c:if test="${not empty id}">
					<p><a href="Inscription">Modifier mon compte</a></p>
				</c:if>
				<c:if test="${empty id}">
					<p>Nouveau sur le site ?
						<a href="Inscription">Créer votre compte</a></p>
				</c:if>
				</fieldset>
			</form>
		</div>
	</div>
<%@include file="footer.jsp"%>
</body>

</html>f