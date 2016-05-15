<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<html>
<head>

    <title>Users Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" >
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<h1 align="center">All users</h1>
<div class="row">
    <div class="col-sm-8">
        <c:if test="${!empty listUsers}">
            <table class="table table-striped">
                <tr>
                    <th >id</th>
                    <th >name</th>
                    <th >age</th>
                    <th >isAdmin</th>
                    <th>createdDate</th>
                    <th >Edit</th>
                    <th >Delete</th>
                </tr>
                <c:forEach items="${listUsers.pageList}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.age}</td>
                        <td>${user.admin}</td>
                        <td>${user.createdDate}</td>
                        <td><a href="<c:url value='/edit/${user.id}'/>">Edit</a></td>
                        <td><a href="<c:url value='/remove/${user.id}'/>">Delete</a></td>
                    </tr>


                </c:forEach>

            </table>
            <nav>
                <ul class="pager">
                    <li><a href=${listUsers.page-1>0?listUsers.page:1}>Previous</a></li>
                    ${listUsers.nextPage()}
                    <li><a href=${listUsers.page+1}>Next</a></li>
                </ul>
            </nav>


        </c:if>
    </div>
    <div class="col-sm-4">
        <h3>Search for a user by id or name</h3>


        <form aria-label="Search for a user by id"  role="form" method="post" action="/findUserById/" accept-charset="UTF-8">
            <div class="form-group">
                <label class="control-label col-sm-2" for="id">ID:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="id" placeholder="Enter id" name="id">
                </div>
                <br/>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-primary">Search</button>
                </div>
            </div>
        </form>
        <br/>
        <br/>

        <form aria-label="Search for a user by name"  role="form" method="post" action="/findUserByName/" accept-charset="UTF-8">
            <div class="form-group">
                <label class="control-label col-sm-2" for="name">Name:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
                </div>
            </div>
            <br/>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-primary">Search</button>
                </div>
            </div>
        </form>


    <h3>Add a User</h3>


    <c:url var="addAction" value="/users/add"/>

    <form:form action="${addAction}" commandName="user"  role="form" accept-charset="UTF-8">

            <c:if test="${!empty user.name}">
                <div class="form-group">
                    <form:label path="id"  class="col-sm-2 control-label">ID</form:label>
                    <div class="col-sm-10">
                        <form:input path="id"  class="form-control"  readonly="true" size="8" disabled="true"/>
                        <form:hidden path="id"/>
                    </div>
                </div>

            </c:if>

        <div class="form-group">
            <form:label  class="col-sm-2 control-label" path="name" >Name</form:label>
            <div class="col-sm-10">
                <form:input  class="form-control"   path="name"/>
            </div>
        </div>

        <div class="form-group">
            <form:label  class="col-sm-2 control-label" path="age">Age</form:label>
            <div class="col-sm-10">
                <form:input  class="form-control"  path="age"/>
            </div>
        </div>
        <div class="form-group">
            <form:label  class="col-sm-2 control-label" path="name">isAdmin</form:label>
            <div class="col-sm-10">
                <form:input  class="form-control"   path="admin"/>
            </div>
        </div>
        <c:if test="${!empty user.createdDate}">
            <div class="form-group">
                <form:label  class="col-sm-2 control-label" path="createdDate">createdDate</form:label>
                <div class="col-sm-10">
                    <form:input  class="form-control"  path="createdDate" readonly="true" size="8" disabled="true"/>
                </div>
            </div>
        </c:if>
            <td colspan="2">
                <c:if test="${!empty user.name}">
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Edit user</button>
                        </div>
                    </div>
                </c:if>
                <c:if test="${empty user.name}">
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Add user</button>
                        </div>
                    </div>
                </c:if>


    </form:form>
</div>

    </div>

</div>
</body>
</html>