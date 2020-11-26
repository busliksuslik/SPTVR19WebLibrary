<%-- 
    Document   : addUserForm
    Created on : Nov 26, 2020, 1:59:40 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            input{
                margin: 5px;
            }
            ul {
              list-style-type: none;
              margin: 0;
              padding: 0;
              overflow: hidden;
              background-color: #333;
            }

            li {
              float: left;
            }

            li a {
              display: block;
              color: white;
              text-align: center;
              padding: 14px 16px;
              text-decoration: none;
            }

            li a:hover {
              background-color: #111;
            }
            * {
                margin: 0px;
                padding: 0px;
            }

        </style>
    </head>
    <body>
        <ul>
            <li><a  href="index.jsp">Home</a></li>
            <li><a  href="addBook">add book</a></li>
            <li><a href="books">books</a></li>
            <li><a class="active" href="addUser">add reader</a></li>
        </ul>
        <h1 style = "color: #FF00FF; font-family: comic sans ms;"> Add user</h1>
        <form action = "createUser" method="POST">
            <input placeholder="Name" name="name" value="${name}"><br>
            <input placeholder="Password" name = "password"value="${password}"><br>
            <input style="" type="submit">
        </form>
    </body>
</html>
