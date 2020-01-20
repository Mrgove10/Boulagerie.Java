<!DOCTYPE html>
<html>
<%@include file="head.jsp"%>

<body>
<c:out value="essaiJSTL"/>
  <%@include file="header.jsp"%>
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