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
				<li class="selected"><a href="Menu">Menu</a></li>
				<li><a href="Contact">Contact</a></li>
				<li><a href="Compte">Compte</a></li>
				<li><a href="#">Panier</a></li>
			</ul>
		</div>
	</div>
	<div class="content">
		<div>
			<ul>
				<li>
					<a href="#"><img src="images/traditional.jpg" alt=""></a>
					<a href="#">Baguettes</a>
					<table>
						<tr>
							<td style="width:60%" >Le pain au pavot</td>
							<td style="width:40%">€ 1.15</td>
						</tr>
						<tr>
							<td>Le pain tressé et natté</td>
							<td>€ 1.80</td>
						</tr>
					</table>
				</li>
				<li>
					<a href="#"><img src="images/patisseries.jpg" alt=""></a>
					<a href="#">Patisseries</a>
					<table>
						<tr>
							<td>Eclair</td>
							<td>$ 2.50</td>
						</tr>
						<tr>
							<td>Flan</td>
							<td>$ 2.10</td>
						</tr>
					</table>
				</li>
				<li>
					<a href="#"><img src="images/favorites.jpg" alt=""></a>
					<a href="#">Vos Favoris</a>
				</li>
			</ul>
			<ul>
				<li>
					<a href="#"><img src="images/loafs.jpg" alt=""></a>
					<a href="#">Pains</a>
					<table>
						<tr>
							<td>Complet</td>
							<td>$ 1.80</td>
						</tr>
						<tr>
							<td>Tradition</td>
							<td>$ 1.35</td>
						</tr>
					</table>
				</li>
				<li>
					<a href="#"><img src="images/sandwiches.jpg" alt=""></a>
					<a href="#">Sandwichs</a>
					<table>
						<tr>
							<td>Jambon-beurre</td>
							<td>$ 4.00</td>
						</tr>
						<tr>
							<td>Au thon</td>
							<td>$ 4.50</td>
						</tr>
					</table>
				</li>
				<li>
					<a href="#"><img src="images/croissants.jpg" alt=""></a>
					<a href="#">Viennoiseries</a>
					<table>
						<tr>
							<td>Croissants</td>
							<td>$ 0.95</td>
						</tr>
						<tr>
							<td>Suisse</td>
							<td>$ 1.25</td>
						</tr>
					</table>
				</li>
			</ul>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>