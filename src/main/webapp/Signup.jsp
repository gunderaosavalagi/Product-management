<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style>
body {
    font-family: Arial, sans-serif;
    background: linear-gradient(to bottom right, #4facfe, #00f2fe);
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    color: #333;
}

div {
    text-align: center;
    width: 100%;
}

h1 {
    color: #333;
    margin-bottom: 20px;
    text-transform: uppercase;
    font-size: 24px;
}

form {
    background-color: #fff;
    padding: 30px;
    border: 1px solid #ccc;
    border-radius: 10px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    margin: 0 auto;
    max-width: 400px;
    text-align: left;
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
    background-color: #4facfe;
    color: white;
    border: none;
    padding: 10px;
    width: 100%;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #007bff;
}

a button {
    background-color: #00f2fe;
    color: white;
    margin-top: 10px;
    border: none;
    padding: 8px 15px;
    font-size: 14px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

a button:hover {
    background-color: #00bffe;
}

a {
    text-decoration: none;
}</style>
</head>
<body>
	<div align="center">
		<h1>Register Here,</h1>
		<form action="register" method="post"
			style="border: 1px solid black; padding: 25px; margin-left: 250px; margin-right: 250px;">
			<label for="name">Name: </label> <input type="text" name="name"
				id="name"> <br> <br> <label for="un">UserName:
			</label> <input type="text" name="username" id="un"> <br> <br>
			<label for="pwd">Password:</label> <input type="password"
				name="password" id="pwd"> <br> <br> <label
				for="cpwd">Confirm Password:</label> <input type="password"
				name="cpassword" id="cpwd">
				 <br> <br>
			<button>Register</button>
		</form>
		<br> <br> <a href="login"><button>Login</button></a>
	</div>
	
	<script type="text/javascript">
	alert("${message}")
	</script>
</body>
</html>