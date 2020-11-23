<%-- 
    Document   : updateresult
    Created on : Nov 18, 2020, 3:57:46 PM
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
        <h1><%= request.getAttribute("rowUpdated") + " row updated " %> </h1>
        </br>
        <jsp:include page="showemployee.jsp" flush="true" />
    </body>
</html>
