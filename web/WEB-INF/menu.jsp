<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<%@include file="head.jsp"%>

<body>
	<%@include file="header.jsp"%>
	<div class="content">
		<div>
			<ul>
				<li>
					<a href="#"><img src="images/traditional.jpg" alt=""></a>
					<a href="#">Baguettes</a>
					<table>
						<c:forEach items="${ listBaguette }" var="l">
							<tr>
								<td style="width:60%"><c:out value='${ l.produits }'/></td>
								<td style="width:40%">€ <c:out value='${ l.prix }'/></td>
							</tr>
						</c:forEach>
					</table>
				</li>
				<li>
					<a href="#"><img src="images/patisseries.jpg" alt=""></a>
					<a href="#">Patisseries</a>
					<table>
						<c:forEach items="${ listPatisseriee }" var="l">
							<tr>
								<td style="width:60%"><c:out value='${ l.produits }'/></td>
								<td style="width:40%">€ <c:out value='${ l.prix }'/></td>
							</tr>
						</c:forEach>
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
						<c:forEach items="${ listPain }" var="l">
							<tr>
								<td style="width:60%"><c:out value='${ l.produits }'/></td>
								<td style="width:40%">€ <c:out value='${ l.prix }'/></td>
							</tr>
						</c:forEach>
					</table>
				</li>
				<li>
					<a href="#"><img src="images/sandwiches.jpg" alt=""></a>
					<a href="#">Sandwichs</a>
					<table>
						<c:forEach items="${ listSandwich }" var="l">
							<tr>
								<td style="width:60%"><c:out value='${ l.produits }'/></td>
								<td style="width:40%">€ <c:out value='${ l.prix }'/></td>
							</tr>
						</c:forEach>
					</table>
				</li>
				<li>
					<a href="#"><img src="images/croissants.jpg" alt=""></a>
					<a href="#">Viennoiseries</a>
					<table>
						<c:forEach items="${ listViennoiserie }" var="l">
							<tr>
								<td style="width:60%"><c:out value='${ l.produits }'/></td>
								<td style="width:40%">€ <c:out value='${ l.prix }'/></td>
							</tr>
						</c:forEach>
					</table>
				</li>
			</ul>
		</div>
	</div>
<%@include file="footer.jsp"%>
</body>

</html>