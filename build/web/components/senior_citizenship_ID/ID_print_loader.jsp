<%-- 
    Document   : ID_print_loader
    Created on : Dec 13, 2016, 1:23:14 PM
    Author     : nisalsp9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <style>
        .x1{
            
            background-color: buttonface;
            
        }
        .x2{           
            width: 500px;
            height: 30px;
            background-color: transparent;
            border: none;
            font-size: 14px;
            
        }
        
    </style>
    
    
    
</head>
<body class="x1" >
<form  method="post" action="../../../ERP/SCIDPrinter"> 
    Name : <input class="x2" readonly type="text" name="name" id="name" value="<%out.print(request.getParameter("name"));%>"/><br/>
    Address : <input class="x2" readonly type="text" name="address" id="address" value="<%out.print(request.getParameter("address"));%>"/><br/>
    DOB : <input class="x2" readonly type="text" name="dob" id="dob" value="<%out.print(request.getParameter("dob"));%>"/><br/>
    NIC No : <input class="x2" readonly type="text" name="nic" id="nic" value="<%out.print(request.getParameter("nic"));%>"/><br/>
    <input readonly type="submit" value="Print"/>
</form>
</body>

