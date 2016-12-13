<%-- 
    Document   : ID_print_loader
    Created on : Dec 13, 2016, 1:23:14 PM
    Author     : nisalsp9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="../../../ERP/SCIDPrinter"> 
            <input type="text" name="name" id="name" value="<%out.print(request.getParameter("name"));%>"/>
            <input type="text" name="address" id="address" value="<%out.print(request.getParameter("address"));%>"/>
            <input type="text" name="dob" id="dob" value="<%out.print(request.getParameter("dob"));%>"/>
            <input type="text" name="nic" id="nic" value="<%out.print(request.getParameter("nic"));%>"/>
            <input type="submit"/>
        </form>
    </body>
</html>
