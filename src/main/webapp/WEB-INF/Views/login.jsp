<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login to Fetch Details</title>
<style>
    body {
      background-image: url('https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?w=2000');
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
    }
    </style>
</head>
<body bg>
    <center><br><br><br><br>
        <font color="red"><h2>${error}</h2></font>
    <h1>Login to LocalQ</h1>
<form action="login" method="POST" autocomplete="off">
    Enter Username: <input type="text" name="username"/><br><br>
    Password: <input type="password" name="password"/><br><br>
    <input type="submit" value="Login"/><br><br>
</form>
<form action="create" method="GET">
    <input type="submit" value="Create User"/>
</form>
<br><br><br>
</center>

</body>
</html>
