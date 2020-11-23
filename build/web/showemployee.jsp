<%-- 
    Document   : showemployee
    Created on : Nov 18, 2020, 3:12:29 PM
    Author     : thead
--%>

<%@page import="model.EmployeeTable"%>
<%@page import="java.util.Iterator"%>
<%@page import="model.Employee"%>
<%@page import="java.util.Vector"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<!--    usebean for extract data-->
    <jsp:useBean id="emp" class="model.Employee" scope="request"/>
    <%
            EntityManager em = (EntityManager) session.getAttribute("entitymanager");
            Vector<Employee> empList = EmployeeTable.findAllEmployee(em);
            Iterator<Employee> itr = empList.iterator();
     %>
<!--     add extracted data to table-->
    <body>
        <center>
<h1>Employee List</h1>
 <table border="1">
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Salary</th>
          </tr>
          <%
               while(itr.hasNext()) {
                   emp = itr.next();
                   out.println("<tr>");
                   out.println("<td> "+ emp.getId() + "</td>");
                   out.println("<td> "+ emp.getName() + "</td>");
                   out.println("<td> "+ emp.getSalary() + "</td>");
                   out.println("<tr>");
               }
          %>
 </table>
 <a href="menu.jsp">Back to Menu</a>
 </center>
       
    </body>
</html>
