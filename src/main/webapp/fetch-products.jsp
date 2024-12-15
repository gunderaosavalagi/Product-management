<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<style>
/* General page styling */
body {
    font-family: Arial, sans-serif;
    background-color: #f8f9fa;
    color: #333;
    margin: 0;
    padding: 0;
}

/* Center the content and style the container */
div {
    margin: 50px auto;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 10px;
    background-color: #ffffff;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    width: 80%;
    text-align: center;
}

/* Style the header */
h1 {
    color: #007bff;
    margin-bottom: 20px;
}

/* Style the table */
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

/* Style table headers */
table th {
    background-color: #007bff;
    color: white;
    padding: 10px;
    text-align: center;
}

/* Style table rows */
table td {
    padding: 10px;
    text-align: center;
    border: 1px solid #ddd;
}

/* Style table images */
table img {
    border-radius: 5px;
}

/* Style buttons */
button {
    background-color: #007bff;
    color: white;
    padding: 8px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-decoration: none;
}

/* Back button specific styling */
a button {
    background-color: #6c757d;
}

/* Hover effects for buttons */
button:hover {
    background-color: #0056b3;
}

a button:hover {
    background-color: #5a6268;
}

/* Style the alert message */
script {
    font-family: Arial, sans-serif;
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
                    <td><button>Edit</button></td>
                    <td><a href="delete?id=${p.id}"><button>Delete</button></a></td>
                </tr>
            </c:forEach>
        </table>
        <br><br>
        <a href="home"><button>Back</button></a>
    </div>

    <c:if test="${message != null}">
        <script type="text/javascript">
            alert("${message}");
        </script>
    </c:if>
</body>
</html>
