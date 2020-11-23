<%-- 
    Document   : deleteresult
    Created on : Nov 18, 2020, 3:48:24 PM
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
         <h1><%= request.getAttribute("rowDeleted") + " row deleted " %> </h1>
        </br>
        <jsp:include page="showemployee.jsp" flush="true" />
    </body>
</html>
