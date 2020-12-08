<%-- 
    Document   : returnHistoryForm
    Created on : 08.12.2020, 13:31:55
    Author     : nikita
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Список книг</title>
        <style>
        #ulbar {
          list-style-type: none;
          margin: 0;
          padding: 0;
          overflow: hidden;
          background-color: #333;
        }

        #libar {
          float: left;
        }

        #bara {
          display: block;
          color: white;
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;
        }

        #bara:hover {
          background-color: #111;
        }
        * {
            margin: 0px;
            padding: 0px;
        }
    </style>
    </head>
    <body>
        <ul id = "ulbar">
            <li id = "libar"><a id ="bara" href="index.jsp">Home</a></li>
            <li id = "libar"><a id ="bara" href="addBook">add book</a></li>
            <li id = "libar"><a id ="bara" class="active" href="books">books</a></li>
            <li id = "libar"><a id ="bara" href="addUser">add reader</a></li>
            <li id = "libar"><a id ="bara" href="users">users</a></li>
            <li id = "libar"><a id ="bara" href="addHistory">addHistory</a></li>
        </ul>
        <form action = "returnHistory" method="POST">
            <select name="historyId" size="10">
                <c:forEach var="history" items="${listRead}">
                    <option value="${history.id}"> ${history.book.name} ${history.user.login} </option>
                </c:forEach>
            </select>
            <input style="" type="submit">
        </form>
    </body>
</html>
