<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<%@include file="head.jsp" %>

<body>
<%@include file="header.jsp" %>
<div class="content">
    <div>
        <form id="inscription" method="post" action="Inscription">
            <h1>Inscription</h1>
            <fieldset id="inputs">
                <input id="nom" name="nom"  type="text" placeholder="nom" autofocus <c:out value='${ values.getParameter("nom") }'/>>
                <c:if test="${ controller.resultat[0]==false}">
                    <span class='erreur'><c:out value="Le nom ne peut être nulle"/></span>
                </c:if>
                <input id="prenom" name="prenom" type="text" placeholder="prénom">
                <c:if test="${ controller.resultat[1]==false}">
                    <span class='erreur'><c:out value="Le prenom ne peut être nulle"/></span>
                </c:if>
                <input id="adresse" name="adresse" type="text" placeholder="adresse">
                <c:if test="${ controller.resultat[2]==false}">
                    <span class='erreur'><c:out value="L'adresse ne peut être nulle"/></span>
                </c:if>
                <input id="codepostal" name="codepostal" type="text" placeholder="code postal">
                <c:if test="${ controller.resultat[3]==false}">
                    <span class='erreur'><c:out value="Le code postale ne peut être nulle"/></span>
                </c:if>
                <input id="ville" name="ville" type="text" placeholder="ville">
                <c:if test="${ controller.resultat[4]==false}">
                    <span class='erreur'><c:out value="La ville ne peut être nulle"/></span>
                </c:if>
                <input id="portable" name="portable" type="text" placeholder="numéro de portable">
                <c:if test="${ controller.resultat[5]==false}">
                    <span class='erreur'><c:out value="Le numero de portable ne peut être nulle"/></span>
                </c:if>
                <input id="Email" name="Email" type="text" placeholder="Email" autofocus>
                <c:if test="${ controller.resultat[6]==false}">
                    <span class='erreur'><c:out value="L'email ne peut être nulle"/></span>
                </c:if>
                <input id="password" name="password" type="password" placeholder="Password">
                <c:if test="${ controller.resultat[7]==false}">
                    <span class='erreur'><c:out value="Le mot de passe ne peut être nulle"/></span>
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