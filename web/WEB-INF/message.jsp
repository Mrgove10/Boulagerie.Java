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
			<div class="contact">
				<p>Mot de passe perdu...</p>
			</div>
			<div>
				<form id="login">
					<h1>Envoyer un email</h1>
					<fieldset id="inputs">
						<input id="username" type="text" placeholder="nom" autofocus required><br/>   
						<input id="email" type="text" placeholder="Email" autofocus required><br/>   
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