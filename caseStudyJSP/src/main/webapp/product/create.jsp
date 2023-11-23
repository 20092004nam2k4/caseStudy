<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Product</title>
    <style>
        body {
            background-color: #343a40;
            font-family: 'Arial', sans-serif;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #dc3545;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        .container {
            width: 50%;
            margin: auto;
            margin-top: 20px;
            background-color: #495057;
            padding: 20px;
            border-radius: 10px;
        }

        fieldset {
            border: 2px solid #dc3545;
            border-radius: 5px;
            padding: 10px;
            background-color: #343a40;
        }

        legend {
            color: #dc3545;
            font-weight: bold;
        }

        table {
            width: 100%;
        }

        table tr td {
            padding: 8px;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
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

        form:last-child {
            margin-top: 10px;
        }

        form:last-child input[type="submit"] {
            background-color: #007bff;
        }

        form:last-child input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div align="center" class="container">
    <header class="header">
        <h2>Create Product</h2>
    </header>
    <form action="/products-create" method="post">
        <fieldset>
            <legend>Create</legend>
            <table>
                <tr>
                    <td>Product Name:</td>
                    <td><input type="text" name="name" placeholder="Product's name..."></td>
                </tr>
                <tr>
                    <td>Describe:</td>
                    <td><input type="text" name="describe" placeholder="Product Description..."></td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td><input type="text" name="price" placeholder="Price Product..."></td>
                </tr>
                <tr>
                    <td>Image URL:</td>
                    <td><input type="text" name="img" placeholder="Img url Product..."></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Create"></td>
                </tr>
            </table>
        </fieldset>
    </form>
    <form action="/products">
        <input type="submit" value="Home">
    </form>
</div>
</body>
</html>
