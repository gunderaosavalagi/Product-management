<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to bottom right, #6a11cb, #2575fc);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #fff;
    }
    h1 {
        margin-bottom: 20px;
    }
    form {
        background-color: #fff;
        color: #333;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        text-align: left;
        width: 300px;
    }
    label {
        display: block;
        font-weight: bold;
        margin-bottom: 8px;
    }
    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    button {
        width: 100%;
        padding: 10px;
        background-color: #2575fc;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }
    button:hover {
        background-color: #6a11cb;
    }
    a {
        text-decoration: none;
    }
    a button {
        width: auto;
        padding: 8px 20px;
        margin-top: 10px;
        background-color: #6a11cb;
        border: none;
    }
    a button:hover {
        background-color: #2575fc;
    }
</style>

</head>
<body>
	<div align="center">
		<h1>Login Here</h1>
		<form action="login" method="post"
		    style="border: 1px solid black; padding: 25px; margin-left: 250px; margin-right: 250px;">
			<label for="un">UserName :</label>
			<input type="text" name="username" id="un">
			<br>
			<br>
			<label for="pwd">Password :</label>
			<input type="password" name="password" id="pwd">
			<br>
			<br>
			<button>Login</button>
			
		</form>
		<br>
		<br>
		<a href="register"><button>Register</button></a>
	</div>
	<script type="text/javascript">alert("${message}")</script>
</body>
</html>