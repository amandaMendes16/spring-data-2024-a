<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Livros</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>

    <div class="container">
        <h1>Editar Livros </h1>

        <form action="/livros/update" method="post">
            <input type="hidden" name="id" value="${livro.id}" />
            
            <div>
            <label class="form-label">Titulo:</label>
            <input type ="text" name="titulo" class="form-control" value="${livro.titulo}" />
            </div>

            <div>
            <label class="form-label">Gênero: </label>
            <select name="genero" class="form-select">
            <c:forEach var="item" items="${generos}">
            <option ${item.id == livro.genero.id ? "selected": ""} value="${item.id}">${item.nome}</option>
            </c:forEach>
            </select>
            </div>

            <hr />
            <a href="/livros/list" class="btn btn-secondary">Voltar</a>
            <button type="submit" class="btn btn-success">Salvar</button>
            </form>

    </div>
    
</body>
</html>