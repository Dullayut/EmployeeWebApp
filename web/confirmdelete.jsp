<%-- 
    Document   : confirmdelete
    Created on : Nov 18, 2020, 3:42:26 PM
    Author     : thead
--%>

<%@page import="model.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Employee emp = (Employee) session.getAttribute("employee");
            
        %>
        <form name="confirmDelete" action="ConfirmDeleteController">
            ID: <%= emp.getId() %> </br>
            Name: <%= emp.getName() %> </br>
            Salary: <%= emp.getSalary() %> </br>
            <input type="submit" value="Delete" name="delete" />
            <input type="submit" value="Cancel" name="cancel" />
            
        </form>
    </body>
</html>
