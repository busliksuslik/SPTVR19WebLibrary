
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <li><a  href="addUser">add reader</a></li>
            <li><a href="users">users</a></li>
            <li><a class="active" href="addHistory">addHistory</a></li>
        </ul>
        <h1 style = "color: #FF00FF; font-family: comic sans ms;"> Add History</h1>
        ${info}
        <label for="books">Choose a book:</label>
        <form action = "createHistory" method="POST">
            <select name="book" size = "10">
                <c:forEach var="book" items="${listBooks}">
                    <option>${book.name} ${book.author} ${book.year}</option>
                </c:forEach>
            </select>
            <select name="user" size = "10">
                <c:forEach var="user" items="${listUsers}">
                    <option> ${user.login} </option>
                </c:forEach>
            </select>
            <input style="" type="submit">
        </form>
    </body>
</html>

