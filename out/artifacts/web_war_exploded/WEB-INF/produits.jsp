<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<jsp:include page="head.jsp" />

<body>
	<jsp:include page="header.jsp" />
	<div class="content">
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
	<jsp:include page="footer.jsp" />
</body>

</html>