<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<jsp:include page="header.jsp" />
<body>
	<div class="header">
		<div>
			<a href="Home" id="logo"><img src="images/logo.png" alt="logo"></a>
			<ul>
				<li><a href="Home">Accueil</a></li>
				<li><a href="Produits">Produits</a></li>
				<li><a href="Menu">Menu</a></li>
				<li><a href="Contact">Contact</a></li>
				<li class="selected"><a href="Compte">Compte</a></li>
				<li><a href="#">Panier</a></li>
			</ul>
		</div>
	</div>
	<div class="content">
		<div>
			<div>
				<form id="login">
					<h1>Connexion</h1>
					<fieldset id="inputs">
						<img class="connect" src="images/username.png">&nbsp;&nbsp;&nbsp;<input name="login" type="text" placeholder="Email" autofocus required><br/>   
						<img class="connect" src="images/password.png">&nbsp;&nbsp;&nbsp;<input name="pwd" type="password" placeholder="Mot de passe" required>
					</fieldset>
					<fieldset id="actions">
						<input type="submit" id="submit" value="Valider">&nbsp;&nbsp;&nbsp;
						<input type="reset" id="reset" value="Remise à zéro">
						<a href="message.html">Mot de passe oublié ?</a>
					</fieldset>
					<fieldset id="new">
						<p>Nouveau sur le site ?
						<a href="inscription.html">Créer votre compte</a></p>						
					</fieldset>
				</form>
			</div>		
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>f