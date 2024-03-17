<%--
  Created by IntelliJ IDEA.
  User: jinii
  Date: 3/10/24
  Time: 1:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All Member</title>
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

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            table-layout: fixed;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tbody tr:hover {
            background-color: white;
        }

        button {
            padding: 5px 15px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 30px;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        input {
            box-sizing: border-box;
            border: none;
            border-bottom: 2px solid #007bff;
            outline: none;
            margin-top: 10px;
            margin-left: 15px;
            background-color: #f4f4f4;
        }

        #pageTitle {
            cursor: pointer;
        }
        #pageTitle:hover {
            color: black;
        }

        .scrollable-table {
            max-height: 500px;
            max-width: 80%;
            overflow-y: auto;
            position: relative;
        }

        .scrollable-table table {
            width: 100%;
            table-layout: fixed;
        }

        /* thead */
        .scrollable-table thead {
            position: sticky;
            top: 0;
            background-color: white;
            z-index: 1;
        }

    </style>
</head>
<body>
<h1 id="pageTitle">Product List</h1>

<script>
    document.getElementById("pageTitle").addEventListener("click", function() {
        window.location.href = "/product/list";
    });
</script>

<form action="/product/search" method="get">
    <label for="searchString">상품 이름</label>
    <input type="text" id="searchString" name="searchString" required>
    <button type="submit">검색</button>
</form>

<div class="scrollable-table">
<table>
    <thead>
    <tr>
        <th>상품 번호</th>
        <th>상품 이름</th>
        <th>상품 가격</th>
        <th>재고 수량</th>
        <th>수정</th>
        <th>삭제</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="dtoList" items="${dtoList}">
        <tr>

            <td>${dtoList.id}</td>
            <td>${dtoList.name}</td>
            <td>${dtoList.price}</td>
            <td>${dtoList.stock_quantity}</td>
            <td><a href="/product/modify?id=${dtoList.id}">수정</a></td>
            <td><a href="/product/remove?id=${dtoList.id}">삭제</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</div>
<button onclick="location.href='/product/add'">상품 등록</button>
</body>
</html>
