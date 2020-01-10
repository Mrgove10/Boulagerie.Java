<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <jsp:include page="header.jsp" />
  <body>
  <div class="header">
    <div>
      <a href="index.html" id="logo"><img src="images/logo.png" alt="logo"></a>
      <ul>
        <li class="selected"><a href="index.html">Accueil</a></li>
        <li><a href="produits.html">Produits</a></li>
        <li><a href="menu.html">Menu</a></li>
        <li><a href="contact.html">Contact</a></li>
        <li><a href="compte.html">Compte</a></li>
        <li><a href="#">Panier</a></li>
      </ul>
    </div>
  </div>
  <div class="content">
    <div>
      <ul>
        <li>
          <a href="menu.html"><img src="images/traditional.jpg" alt=""></a>
          <a href="menu.html">Traditionnel</a>
        </li>
        <li>
          <a href="menu.html"><img src="images/patisseries.jpg" alt=""></a>
          <a href="menu.html">Patisseries</a>
        </li>
        <li>
          <a href="menu.html"><img src="images/favorites.jpg" alt=""></a>
          <a href="menu.html">Vos Favoris</a>
        </li>
      </ul>
      <ul>
        <li>
          <a href="menu.html"><img src="images/loafs.jpg" alt=""></a>
          <a href="menu.html">Pains classiques</a>
        </li>
        <li>
          <a href="menu.html"><img src="images/sandwiches.jpg" alt=""></a>
          <a href="menu.html">Sandwichs</a>
        </li>
        <li>
          <a href="menu.html"><img src="images/croissants.jpg" alt=""></a>
          <a href="menu.html">Viennoiseries</a>
        </li>
      </ul>
    </div>
  </div>
  <jsp:include page="footer.jsp" />
  </body>
</html>