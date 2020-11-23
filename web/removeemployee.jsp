<%-- 
    Document   : removeemployee
    Created on : Nov 18, 2020, 3:36:46 PM
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
        <form name="mainForm" action="RemoveEmployeeController">
            Employee ID to remove: <input type="text" name="id" value="" size="10" />
            </br>
            <input type="submit" value="Submit" name="submit" />
        </form>
    </body>
</html>
