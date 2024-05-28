<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Remover Livro</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Remover Livro</h1>
        <form action="/livros/delete" method="post">
            <input type="hidden" name="id" value="${livro.id}">
            <p>Tem certeza que deseja remover o livro?</p>
            <hr />
            <a href="/livros/list" class="btn btn-secondary">Voltar</a>
            <button type="submit" class="btn btn-danger">Excluir</button>

        </form>
    </div>
    
</body>
</html>