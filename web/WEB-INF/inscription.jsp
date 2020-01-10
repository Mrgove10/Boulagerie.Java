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
				<form id="login_i">
					<h1>Inscription</h1>
					<fieldset id="inputs">
						<input id="nom" type="text" placeholder="nom" autofocus required> 
						<input id="prenom" type="text" placeholder="prénom" required>   
						<input id="adresse" type="text" placeholder="adresse" required>
						<input id="codepostal" type="text" placeholder="code postal" required>  
						<input id="ville" type="text" placeholder="ville" required>   
						<input id="portable" type="text" placeholder="numéro de portable" required>   
						<input id="Email" type="text" placeholder="Email" autofocus required><br/>
						<input id="password" type="password" placeholder="Password" required>
					</fieldset>
					<fieldset id="actions">
						<input type="submit" id="submit" value="Valider">
					</fieldset>
				</form>
			</div>		
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>