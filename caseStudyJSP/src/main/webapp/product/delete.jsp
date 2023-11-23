<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
    <style>
        body {
            background-color: #343a40;
            font-family: 'Arial', sans-serif;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 30%;
            margin: auto;
            margin-top: 50px;
            background-color: #495057;
            padding: 20px;
            border-radius: 10px;
        }

        h1 {
            color: #dc3545;
        }

        img {
            width: 100px;
            border-radius: 5px;
        }

        form {
            text-align: left;
        }

        form p {
            margin: 10px 0;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: none;
            background-color: #343a40;
            color: #fff;
            border-bottom: 2px solid #dc3545;
        }

        input[type="submit"] {
            background-color: #dc3545;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #c82333;
        }

        a {
            color: #007bff;
            text-decoration: none;
            display: block;
            margin-top: 10px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div align="center" class="container">
    <h1>Delete Product</h1>
    <form action="/products-delete" method="post">
        <p>
            <img src="${list.img}" alt="">
        </p>
        <p>
            <input type="hidden" name="id" value="${list.id}">
        </p>
        <p>
            <input type="text" name="name" value="${list.name}" disabled>
        </p>
        <p>
            <input type="text" name="describe" value="${list.describe}" disabled>
        </p>
        <p>
            <input type="text" name="price" value="${list.price}" disabled>
        </p>
        <p>
            <input type="submit" value="Delete">
        </p>
    </form>
    <a href="/products">Back</a>
</div>
</body>
</html>
