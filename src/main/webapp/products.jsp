<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }

    div {
        margin: 20px auto;
        padding: 20px;
        width: 80%;
        background-color: #ffffff;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }

    h1 {
        color: #333;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
    }

    th, td {
        padding: 10px;
        text-align: center;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

    img {
        border: 2px solid #ccc;
        border-radius: 4px;
    }

    button {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 10px 15px;
        font-size: 14px;
        border-radius: 4px;
        cursor: pointer;
    }

    button:hover {
        background-color: #45a049;
    }

    a {
        text-decoration: none;
    }

    a button {
        padding: 8px 15px;
    }

    a:hover button {
        background-color: #3e8e41;
    }
</style>
</head>
<body>
    <div align="center">
        <h1>Products</h1>
        <table border="1">
            <tr>
                <th>Name</th>
                <th>Image</th>
                <th>Description</th>
                <th>Price</th>
                <th>Category</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach var="p" items="${products}">
                <tr>
                    <td>${p.name}</td>
                    <td><img height="150px" width="150px" alt="${p.name}" src="${p.imageLink}"></td>
                    <td>${p.description}</td>
                    <td>${p.price}</td>
                    <td>${p.category}</td>
                    <td><a href="edit?id=${p.id}"><button>Edit</button></a></td>
                    <td><a href="delete?id=${p.id}"><button>Delete</button></a></td>
                </tr>
            </c:forEach>
        </table><br><br>
        <a href="home"><button>Back</button></a>
    </div>

    <c:if test="${message!=null}">
        <script type="text/javascript">
            alert("${message}")
        </script>
    </c:if>
</body>
</html>
