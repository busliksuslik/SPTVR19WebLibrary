<%-- 
    Document   : index
    Created on : Nov 24, 2020, 2:31:44 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
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
    <head>
        <title>library</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <ul>
            <li><a class="active" href="index.jsp">Home</a></li>
            <li><a href="addBook">add book</a></li>
            <li><a href="books">books</a></li>
            <li><a href="addUser">add reader</a></li>
            <li><a href="users">users</a></li>
        </ul>
        <h1 style="color: #FF00FF; font-family: comic sans ms">Welcome to the jungle</h1>
        <p>${info}</p>
        
    </body>
</html>
