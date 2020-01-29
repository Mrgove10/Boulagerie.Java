<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<%@include file="head.jsp" %>

<body>
<%@include file="header.jsp" %>
<div class="content">
    <div>
        <form id="login_i">
            <h1>Inscription</h1>
            <fieldset id="inputs">
                <input id="nom" type="text" placeholder="nom" autofocus required>
                <c:if test="${ controller.resultat[0]==false}">
                    <span class='erreur'><c:out value="La référence ne peut être nulle"/></span>
                </c:if>
                <input id="prenom" type="text" placeholder="prénom" required>
                <c:if test="${ controller.resultat[0]==false}">
                    <span class='erreur'><c:out value="La référence ne peut être nulle"/></span>
                </c:if>
                <input id="adresse" type="text" placeholder="adresse" required>
                <c:if test="${ controller.resultat[0]==false}">
                    <span class='erreur'><c:out value="La référence ne peut être nulle"/></span>
                </c:if>
                <input id="codepostal" type="text" placeholder="code postal" required>
                <c:if test="${ controller.resultat[0]==false}">
                    <span class='erreur'><c:out value="La référence ne peut être nulle"/></span>
                </c:if>
                <input id="ville" type="text" placeholder="ville" required>
                <c:if test="${ controller.resultat[0]==false}">
                    <span class='erreur'><c:out value="La référence ne peut être nulle"/></span>
                </c:if>
                <input id="portable" type="text" placeholder="numéro de portable" required>
                <c:if test="${ controller.resultat[0]==false}">
                    <span class='erreur'><c:out value="La référence ne peut être nulle"/></span>
                </c:if>
                <input id="Email" type="text" placeholder="Email" autofocus required><br/>
                <c:if test="${ controller.resultat[0]==false}">
                    <span class='erreur'><c:out value="La référence ne peut être nulle"/></span>
                </c:if>
                <input id="password" type="password" placeholder="Password" required>
                <c:if test="${ controller.resultat[0]==false}">
                    <span class='erreur'><c:out value="La référence ne peut être nulle"/></span>
                </c:if>
            </fieldset>
            <fieldset id="actions">
                <input type="submit" id="submit" value="Valider">
            </fieldset>
        </form>
    </div>
</div>
<%@include file="footer.jsp" %>
</body>

</html>