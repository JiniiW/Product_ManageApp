<%--
  Created by IntelliJ IDEA.
  User: jinii
  Date: 3/17/24
  Time: 7:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Modify</title>
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

        h1 {
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

        label {
            display: block;
            margin-bottom: 8px;
            color: #333333;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        button {
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }

    </style>
</head>
<body>
<h1>상품 번호 : ${dto.id}</h1>
<form action="/product/modify" method="post">

    <input type="text" id="id" name="id" value="${dto.id}" readonly style="display: none;"><br>

    <label for="name">상품 이름</label>
    <input type="text" id="name" name="name" value="${dto.name}" required><br>

    <label for="price">상품 가격</label>
    <input type="number" id="price" name="price" value="${dto.price}" required><br>

    <label for="stock_quantity">재고 수량</label>
    <input type="number" id="stock_quantity" name="stock_quantity" value="${dto.stock_quantity}" required><br>

    <button type="submit">수정하기</button>
</form>
</body>
</html>
