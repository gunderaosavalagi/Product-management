<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
<style>
/* Apply a font to the whole page */
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
    width: 400px;
    text-align: center;
}

/* Style the header */
h1 {
    color: #45a049;
}

/* Style the form inputs and labels */
form input[type="text"],
form input[type="hidden"] {
    width: calc(100% - 170px);
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

form label {
    display: inline-block;
    width: 150px;
    text-align: right;
    margin-right: 10px;
    font-weight: bold;
}

/* Style the buttons */
form button,
a button {
    background-color: #45a049;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-decoration: none;
}

/* Back button specific styling */
a button {
    background-color: #6c757d;
}

/* Add hover effects */
form button:hover {
    background-color: #3e8e41;
}

a button:hover {
    background-color: #5a6268;
}
</style>
</head>
<body>
<div align="center">
    <h1>Update Product</h1>
    <form action="edit" method="post">
        <input type="hidden" name="id" value="${p.id}">
        Product Name: <input type="text" name="name" value="${p.name}"><br><br>
        Product Description: <input type="text" name="description" value="${p.description}"><br><br>
        Product Image Link:  <input type="text" name="imageLink" value="${p.imageLink}"><br><br>
        Product Price: <input type="text" name="price" value="${p.price}"><br><br>
        Product Category: <input type="text" name="category" value="${p.category}"><br><br>
        <button>Update</button>
    </form><br>
    
    <a href="home"><button>Back</button></a>
</div>
</body>
</html>
