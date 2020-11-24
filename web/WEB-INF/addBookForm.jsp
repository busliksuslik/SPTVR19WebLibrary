<%-- 
    Document   : addBookForm
    Created on : Nov 24, 2020, 1:59:54 PM
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
        </style>
    </head>
    <body>
        <h1 style = "color: #FF00FF; font-family: comic sans ms;"> Library</h1>
        <form action = "createBook" method="POST">
            <input placeholder="Name" name="name"><br>
            <input placeholder="Author" name = "author"><br>
            <input placeholder="Year of publishing" name="year">
            <input style="" type="submit">
        </form>
    </body>
</html>
