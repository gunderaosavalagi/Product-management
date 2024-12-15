<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<style>
/* Apply a font to the whole page */
body {
    font-family: Arial, sans-serif;
    background-color: #f8f9fa;
    color: #333;
    margin: 0;
    padding: 0;
}

/* Center the content and add some margin and padding */
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
    color: #007bff;
}

/* Style the form labels */
form label {
    display: inline-block;
    width: 150px;
    text-align: right;
    margin-right: 10px;
    font-weight: bold;
}

/* Style the form inputs */
form input[type="text"] {
    width: calc(100% - 170px);
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

/* Style the submit button */
form button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

/* Style the link button */
a button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-decoration: none;
}

/* Add hover effects */
form button:hover, 
a button:hover {
    background-color: #45a049;
}
</style>
</head>
<body>
<div align="center">
    <h1>Add Product</h1>
    <form action="add-product" method="post">
        Product Name: <input type="text" name="name"><br><br>
        Product Description: <input type="text" name="description"><br><br>
        Product Image Link: <input type="text" name="imageLink"><br><br>
        Product Price: <input type="text" name="price"><br><br>
        Product Category: <input type="text" name="category"><br><br>
        <button>Add</button>
    </form><br>
    
    <a href="home"><button>Back</button></a>
</div>
</body>
</html>
