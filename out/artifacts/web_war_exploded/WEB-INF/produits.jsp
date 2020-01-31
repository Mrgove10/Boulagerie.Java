<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<%@include file="head.jsp" %>
<body>
<%@include file="header.jsp" %>
<div class="content">
    <div>
        <form id="produits" method="post" action="Produits">
            <h1>Rajout d'un produit</h1>
            <fieldset id="inputs">
                <input id="reference"
                       type="text"
                       placeholder="reference"
                       autofocus
                       name="reference"
                <c:out value='${ values.getParameter("reference") }'/>>
                <!--    // TOOD SOMETHING HERE-->
                <c:if test='${ !empty reference }'>
                    <c:out value='${ reference }'/>
                </c:if>
                <c:if test="${ controller.resultat[0]==false}">
                    <span class='erreur'><c:out value="La référence ne peut être nulle"/></span>
                </c:if>

                <input id="nom" name="nom" type="text" placeholder="nom" <c:out value='${ values.getParameter("nom") }'/>>
                <c:if test="${ controller.resultat[1]==false}">
                    <span class='erreur'><c:out value="Le nom ne peut être nulle"/></span>
                </c:if>

                <input id="prix" name="prix" type="text" placeholder="prix" <c:out value='${ values.getParameter("prix") }'/>>
                <c:if test="${ controller.resultat[2]==false}">
                    <span class='erreur'><c:out value="Le prix ne peut être nulle"/></span>
                </c:if>
                <br>
                <select id="famille" name="famille" >
                    <c:forEach items="${ listeFamille }" var="famille">
                        <option value="<c:out value='${ famille.reference }'/>>
                            <c:out value='${ famille.famille }'/>
                        </option>
                    </c:forEach>
                </select>
            </fieldset>
            <fieldset id="actions">
                <input type="submit" id="submit" value="Ajouter">
            </fieldset>
        </form>
    </div>
</div>
<%@include file="footer.jsp" %>

</body>
</html>