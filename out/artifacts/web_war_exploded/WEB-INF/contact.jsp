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
				<li class="selected"><a href="Contact">Contact</a></li>
				<li><a href="Compte">Compte</a></li>
				<li><a href="#">Panier</a></li>
			</ul>
		</div>
	</div>
	<div class="content">
		<div>
			<div class="contact">
				<p>Nous contacter</p>
				
				
				
				<p class="address">Adresse : 135, Avenue de la République, 38600 Fontaine <br>
				Téléphone : 04-76-21-85-96 <br>
				Email : info@breadFactory.com <br>
				</p>
				<div class="connect">
					<a href="http://twitter.com/fwtemplates" id="content-twitter">twitter</a>
					<a href="http://facebook.com/freewebsitetemplates" id="content-facebook">facebook</a>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>