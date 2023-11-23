<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PhoneShop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"></script>
</head>
<style>
    body {
        background-color: #f8f9fa;
    }

    .header-list {
        background-color: #d7ccc8;
        padding: 10px;
        text-align: center;
        margin-bottom: 20px;
    }

    .header {
        background-color: #795548;
        padding: 10px;
        text-align: center;
        margin-bottom: 20px;
    }

    .title {
        font-family: 'Courier 10 Pitch';
        color: #fff;
        text-decoration: none;
        margin: auto;
    }

    .menu {
        float: left;
        margin-top: 10px;
    }

    .search-form {
        margin-bottom: 10px;
    }

    .carousel {
        margin-top: 20px;
    }

    .product-card {
        border: 1px solid #795548;
        border-radius: 10px;
        margin-bottom: 20px;
        padding: 10px;
        background-color: #fff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .product-card img {
        max-width: 100%;
        height: auto;
        border-radius: 8px;
        margin-bottom: 10px;
    }

    .product-details {
        margin-bottom: 10px;
    }

    .btn-actions {
        text-align: center;
    }

    .footer {
        padding: 2.5rem 0;
        text-align: center;
        background-color: #78909c;
        border-top: .05rem solid #455a64;
        color: #fff;
    }
</style>
<body>
<div class="container-fluid">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="/products">
                <i class="material-icons">cloud</i>
                <h1 class="title">PhoneShop</h1>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <h3 class="title"><a href="/products" class="text-white">Menu</a></h3>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto justify-content-between">
                    <li class="nav-item">
                        <form action="/products-search" method="get" class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="text" name="search" placeholder="Search">
                        </form>
                    </li>
                    <li class="nav-item">
                        <button class="btn btn-primary my-2 my-sm-0" type="button">Search</button>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/products-myCart">Show My Cart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/products-create">Create Product</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/index.jsp">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <nav>
        <h3 class="title"><a href="/products" class="text-white">Menu</a></h3>
    </nav>
</div>


<div class="carousel">
    <!-- Your carousel code here -->
</div>
<main>
    <div class="row">
        <c:forEach items="${list}" var="product">
            <div class="col-md-4">
                <div class="product-card">
                    <img src="${product.img}" alt="Product Image">
                    <div class="product-details">
                        <p>Name: ${product.name}</p>
                        <p>Description: ${product.describe}</p>
                        <p>Price: ${product.price}</p>
                    </div>
                    <div class="btn-actions">
                        <form action="/products-cart" method="get">
                            <input type="hidden" name="img" value="${product.img}">
                            <input type="hidden" name="name" value="${product.name}">
                            <input type="hidden" name="describe" value="${product.describe}">
                            <input type="hidden" name="price" value="${product.price}">
                            <input type="submit" class="btn btn-primary" value="Add to Cart">
                        </form>
                        <div class="mt-2">
                            <a href="/products-edit?action=edit&id=${product.id}" class="btn btn-warning">Edit</a>
                            <a href="/products-delete?action=delete&id=${product.id}"
                               class="btn btn-danger">Delete</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</main>
</div>
<footer class="footer">
    <p>
        <a href="#" class="text-white">Gioi Thieu</a>
        |
        <a href="#" class="text-white">Tro Giup</a>
    </p>
    <p>
        <a href="#" class="text-white">Lien He</a>
    </p>
</footer>
</body>
</html>
