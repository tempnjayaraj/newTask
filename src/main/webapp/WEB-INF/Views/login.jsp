<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
String connectionUrl = "jdbc:sqlserver://localhost\\MSSQLSERVER;Database=Ronald;portNumber=1433";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
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

    List of available users for login: 

<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select username from users";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
    i++;
%>
<font color="green">
<p><%=i%>|<b><%=resultSet.getString("username") %></p></b>
</font>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</center>

</body>
</html>
