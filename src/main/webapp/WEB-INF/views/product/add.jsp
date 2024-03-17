<%--
  Created by IntelliJ IDEA.
  User: jinii
  Date: 3/17/24
  Time: 5:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Product</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        h2 {
            color: #007bff;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: none;
            border-bottom: 2px solid #007bff;
            outline: none;
            margin-top: 10px;
        }

        button {
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
        }

        button[type="reset"] {
            background-color: #ccc;
            margin-right: 8px;
        }
    </style>
</head>
<body>
<h2>Add Product</h2>
<form action="/product/add" method="post">
<%--    <label for="name">Product Name:</label><br>--%>
    <input type="text" id="name" name="name" required placeholder="상품 이름"><br>

<%--    <label for="price">Price:</label><br>--%>
    <input type="number" id="price" name="price" min="0" max="1000000" placeholder="상품 가격" required><br>

<%--    <label for="stockQuantity">Stock Quantity:</label><br>--%>
    <input type="number" id="stockQuantity" name="stock_quantity" min="0" max="99999" placeholder="재고 수량" required><br>

    <button type="reset">초기화</button>
    <button type="submit">상품 등량</button>
</form>
</body>
</html>
