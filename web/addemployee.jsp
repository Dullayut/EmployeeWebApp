<%-- 
    Document   : addemployee
    Created on : Nov 18, 2020, 3:21:46 PM
    Author     : thead
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="addEmployee" action="AddEmployeeController" method="POST">
            ID: <input type="text" name="id" value="" size="10" />
            </br>
            Name: <input type="text" name="name" value="" size="40" />
            </br>
            Salary: <input type="text" name="salary" value="" size="10" />
            </br>
            <input type="submit" value="Submit" name="submit" />
        </form>
    </body>
</html>
