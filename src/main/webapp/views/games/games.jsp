<%--
  Created by IntelliJ IDEA.
  User: abigail
  Date: 18/08/2021
  Time: 09:54 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html>
<head>
  <title>Listado de videojuegos</title>
  <link rel="stylesheet" href="${context}/assets/plugins/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="${context}/assets/dist/css/styles.css">
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
</head>
<body>
<button id="btn-create" type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#create"><i class="fas fa-plus"></i>  Agregar videojuego </button> </a>

<table id="container" class="table table-hover">
  <thead class="table-dark">
  <tr>
    <th>#</th>
    <th>Nombre</th>
    <th>Fecha</th>
    <th>Imagen</th>
    <th>Estado</th>
    <th>Acciones</th>
  </tr>
  </thead>
  <tbody></tbody>
</table>

<div class="modal fade" id="create" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel2">Registro de videojuego</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <label>Nombre del videojuego:</label>
        <br>
        <input type="text" id="lbl_name" required>
        <br><br>
        <label>Imagen:</label>
        <br>
        <input type="file" id="lbl_imgGame" img src="data:image/jpeg;base64,${ game.imgGame }" required >
        <br><br>
        <label>Fecha de estreno:</label>
        <input type="date"  id="lbl_datePremiere" required >
        <br><br>

        <label>Categoria del videojuego:</label>
        <select id="lbl_Category_idCategory" name="Category_idCategory" required>
          <option value="0">Categorias</option>
          <option value="1">Pelea</option>
          <option value="2">Carreras</option>
          <option value="3">Plataforma</option>
          <option value="4">Aventura</option>
          <option value="5">Arcade</option>
        </select>
        <br><br>


      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-success" onclick="create()">Agregar videojuego</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><i class="fas fa-sign-out-alt"></i> Cerrar </button>
      </div>
    </div>
  </div>
</div>

<script src="${context}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="${context}/assets/dist/js/main.js"></script>
</body>
</html>

