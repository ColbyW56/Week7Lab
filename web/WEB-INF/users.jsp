<%-- 
    Document   : users
    Created on : Oct 30, 2022, 5:19:27 PM
    Author     : colby
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
    </head>
    <body>
        <h1><a href="user?action=Add">Manage Users</a></h1>
        <c:if test="${users.size() > 0}">
            <table>
                <tr>
                    <th>Email</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Role</th>
                </tr>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.email}</td>
                        <td>${user.first}</td>
                        <td>${user.last}</td>
                        <td>${user.role.getName()}</td>
                        <td><a href="user?useremail=${user.email}&action=Update">Edit</a>"</td>
                        <td><a href="user?useremail=${user.email}&action=Delete">Delete</a>"</td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </body>
</html>
