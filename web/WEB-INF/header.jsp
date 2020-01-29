<%
    String uri = request.getRequestURI();
    String pageName = uri.substring(uri.lastIndexOf("/")+1);
%>
<div class="header">
    <div>
        <a href="Home" id="logo"><img src="images/logo.png" alt="logo"></a>
        <ul>
            <li <% if(pageName.equals("index.jsp")){ %> class="selected" <% } %>><a href="Home">Accueil</a></li>
            <li <% if(pageName.equals("produits.jsp")){ %> class="selected" <% } %>><a href="Produits">Produits</a></li>
            <li <% if(pageName.equals("menu.jsp")){ %> class="selected" <% } %>><a href="Menu">Menu</a></li>
            <li <% if(pageName.equals("contact.jsp")){ %> class="selected" <% } %>><a href="Contact">Contact</a></li>
            <li <% if(pageName.equals("compte.jsp")){ %> class="selected" <% } %>><a href="Compte">Compte</a></li>
            <li <% if(pageName.equals("panier.jsp")){ %> class="selected" <% } %>><a href="#">Panier</a></li>
        </ul>
    </div>
    <c:if test="${ !empty sessionScope.prenom && !empty sessionScope.nom }">
        <div id="infos">Bonjour, <c:out value='${ sessionScope.prenom } ${ sessionScope.nom }'/> <br/></div>
        <c:set var="affMenu" value="Oui" scope ="page"/>
    </c:if>
</div>