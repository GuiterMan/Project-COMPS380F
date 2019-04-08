<%-- 
    Document   : addUser
    Created on : 2019/4/8, 下午 04:40:15
    Author     : allanlam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Lecturer's Pannel</title>
    </head>
    <body>
    <c:url var="logoutUrl" value="/logout"/>
    <form action="${logoutUrl}" method="post">
        <input type="submit" value="Log out" />
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>

    <h2>Create a User</h2>
    <form:form method="POST" enctype="multipart/form-data"
               modelAttribute="ticketUser">
        
        <form:label path="userid">User ID: </form:label><br/>
        <form:input type="text" path="userid" /><br/><br/>
        <form:label path="password">Password: </form:label><br/>
        <form:input type="text" path="password" /><br/><br/>
        <form:label path="roles">Roles: </form:label><br/>
        <form:radio path="roles" value="STUDENT" />STUDENT
        <form:radio path="roles" value="LECTURER" />LECTURER
        <br /><br />
        <input type="submit" value="Add User"/>
    </form:form>
</body>
</html>