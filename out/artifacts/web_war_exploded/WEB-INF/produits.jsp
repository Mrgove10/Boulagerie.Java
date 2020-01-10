<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<jsp:include page="header.jsp" />
<body>
	<div class="header">
		<div>
			<a href="Home" id="logo"><img src="images/logo.png" alt="logo"></a>
			<li>
				<li><a href="Home">Accueil</a></li>
				<li class="selected"><a href="Produits">Produits</a></li>
				<li><a href="Menu">Menu</a></li>
				<li><a href="Contact">Contact</a></li>
				<li><a href="Compte">Compte</a></li>
				<li><a href="#">Panier</a></li>
			</li>
		</div>
	</div>
	<div class="content">
		<div>
			<div>
				<form id="login_i">
					<h1>Rajout d'un produit</h1>
					<fieldset id="inputs">
						<input id="reference" type="text" placeholder="reference" autofocus required> 
						<input id="nom" type="text" placeholder="nom" required>   
						<input id="prix" type="text" placeholder="prix" required>
						<input id="famille" type="text" placeholder="famille" required>
					</fieldset>
					<fieldset id="actions">
						<input type="submit" id="submit" value="Ajouter">
					</fieldset>
				</form>
			</div>		
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>