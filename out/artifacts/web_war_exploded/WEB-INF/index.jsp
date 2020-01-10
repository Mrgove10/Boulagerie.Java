<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <jsp:include page="header.jsp" />
  <body>
  <div class="header">
    <div>
      <a href="Home" id="logo"><img src="images/logo.png" alt="logo"></a>
      <ul>
        <li class="selected"><a href="Home">Accueil</a></li>
        <li><a href="Produits">Produits</a></li>
        <li><a href="Menu">Menu</a></li>
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
          <a href="Menu"><img src="images/traditional.jpg" alt=""></a>
          <a href="Menu">Traditionnel</a>
        </li>
        <li>
          <a href="Menu"><img src="images/patisseries.jpg" alt=""></a>
          <a href="Menu">Patisseries</a>
        </li>
        <li>
          <a href="Menu"><img src="images/favorites.jpg" alt=""></a>
          <a href="Menu">Vos Favoris</a>
        </li>
      </ul>
      <ul>
        <li>
          <a href="Menu"><img src="images/loafs.jpg" alt=""></a>
          <a href="Menu">Pains classiques</a>
        </li>
        <li>
          <a href="Menu"><img src="images/sandwiches.jpg" alt=""></a>
          <a href="Menu">Sandwichs</a>
        </li>
        <li>
          <a href="Menu"><img src="images/croissants.jpg" alt=""></a>
          <a href="Menu">Viennoiseries</a>
        </li>
      </ul>
    </div>
  </div>
  <jsp:include page="footer.jsp" />
  </body>
</html>