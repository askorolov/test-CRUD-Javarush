<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>User ID${user.id} details</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" >


</head>
<body>
<h1>User  details</h1>
<table class="table table-bordered">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>isAdmin</th>
        <th>createdDate</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>${user.id}</td>
        <td>${user.name}</td>
        <td>${user.age}</td>
        <td>${user.admin}</td>
        <td>${user.createdDate}</td>
        <td><a href="<c:url value='/edit/${user.id}'/>">Edit</a></td>
        <td><a href="<c:url value='/remove/${user.id}'/>">Delete</a></td>
    </tr>
    </tbody>
</table>


</body>
</html>