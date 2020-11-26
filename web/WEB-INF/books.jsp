<%-- 
    Document   : books
    Created on : Nov 26, 2020, 2:16:43 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    </head>
    <body>
        <ul>
            <li><a  href="index.jsp">Home</a></li>
            <li><a  href="addBook">add book</a></li>
            <li><a class="active" href="books">books</a></li>
            <li><a href="addUser">add reader</a></li>
        </ul>
        <h1>WIP!</h1>
    </body>
</html>
