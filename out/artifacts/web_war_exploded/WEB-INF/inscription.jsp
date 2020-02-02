<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<%@include file="head.jsp" %>

<body>
<%@include file="header.jsp" %>
<div class="content">
    <div>
        <form id="inscription" method="post" action="Inscription">
            <c:if test="${not empty id}">
                <h1>Modification</h1>
            </c:if>
            <c:if test="${empty id}">
                <h1>Inscription</h1>
            </c:if>
            <fieldset id="inputs">
                <input id="nom"
                       name="nom"
                       type="text"
                       placeholder="nom"
                       autofocus
                       value="<c:out value="${ utilisateur.getNom() }"/>">
                <c:if test="${ controller.resultat[0]==false}">
                    <span class='erreur'><c:out value="Le nom ne peut être nulle"/></span>
                </c:if>

                <input id="prenom"
                       name="prenom"
                       type="text"
                       placeholder="prénom"
                       value="<c:out value="${ utilisateur.getPrenom() }"/>">
                <c:if test="${ controller.resultat[1]==false}">
                    <span class='erreur'><c:out value="Le prenom ne peut être nulle"/></span>
                </c:if>

                <input id="adress"
                       name="adress"
                       type="text"
                       placeholder="adress"
                       value="<c:out value="${ utilisateur.getAdress() }"/>">
                <c:if test="${ controller.resultat[2]==false}">
                    <span class='erreur'><c:out value="L'adresse ne peut être nulle"/></span>
                </c:if>

                <input id="codepostal"
                       name="codepostal"
                       type="text"
                       placeholder="code postal"
                       value="<c:out value="${ utilisateur.getCodePostal() }"/>">
                <c:if test="${ controller.resultat[3]==false}">
                    <span class='erreur'><c:out value="Le code postale ne peut être nulle"/></span>
                </c:if>

                <input id="ville"
                       name="ville"
                       type="text"
                       placeholder="ville"
                       value="<c:out value="${ utilisateur.getVille() }"/>">
                <c:if test="${ controller.resultat[4]==false}">
                    <span class='erreur'><c:out value="La ville ne peut être nulle"/></span>
                </c:if>

                <input id="portable"
                       name="portable"
                       type="text"
                       placeholder="numéro de portable"
                       value="<c:out value="${ utilisateur.getPortable() }"/>">
                <c:if test="${ controller.resultat[5]==false}">
                    <span class='erreur'><c:out value="Le numero de portable ne peut être nulle"/></span>
                </c:if>

                <input id="email"
                       name="email"
                       type="text"
                       placeholder="Email"
                       autofocus
                       value="<c:out value="${ utilisateur.getEmail() }"/>">
                <c:if test="${ controller.resultat[6]==false}">
                    <span class='erreur'><c:out value="L'email ne peut être nulle"/></span>
                </c:if>

                <input id="password"
                       name="password"
                       type="password"
                       placeholder="Password"
                       value="<c:out value="${ utilisateur.getPassword() }"/>">
                <c:if test="${ controller.resultat[7]==false}">
                    <span class='erreur'><c:out value="Le mot de passe ne peut être nulle"/></span>
                </c:if>
            </fieldset
            <fieldset id="actions">
                <c:if test="${not empty id}">
                    <input type="submit" name="logout" id="logout" value="Deconnexion">
                </c:if>
                <input type="submit" id="submit"
                        <c:if test="${empty id}">
                               value="Valider"
                        </c:if>
                        <c:if test="${not empty id}">
                               value="Modifier"
                        </c:if>
                >
            </fieldset>
        </form>
    </div>
</div>
<%@include file="footer.jsp" %>
</body>

</html>