  <%@page isELIgnored="false"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f9;
        text-align: center;
    }
    h1 {
        color: #333;
        margin-top: 20px;
    }
    h3 {
        color: #555;
    }
    button {
        background-color:#45a049;
        color: white;
        border: none;
        padding: 10px 20px;
        margin: 10px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }
    button:hover {
        background-color: #45a049;
    }
    a {
        text-decoration: none;
    }
</style>

</head>
<body>
	<h3>
		Welcome,
		<%=session.getAttribute("username")%></h3>
	<h1>Home Page</h1>

	<a href="add-product"><button>Add Product</button></a>
	<a href="fetch-products"><button>fetch product</button></a>
	<a href="logout"><button>Logout</button></a>



	<script type="text/javascript">	
	<%if (request.getAttribute("message") != null) {%>
		alert("${message}")
	<%}%>	
	</script>
</body>
</html>