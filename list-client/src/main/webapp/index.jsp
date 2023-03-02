<%@ page import="java.util.List" %>
<%@ page import="com.example.listclient.ListClient" %>
<%@ page import="java.util.ArrayList" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer</title>
</head>
<head>
    <title>Customer Manager</title>
</head>
<style>
    table, th,td {
        border: 1px solid black;
    }
    td,th{
        padding: 5px;
    }
</style>
<body>
<%!
    List<ListClient> listClients = new ArrayList<>();
%>
<%
    listClients.add(new ListClient("Hoàng", "08/21/1997","NĐ"));
    listClients.add(new ListClient("Nam", "07/07/1997","TH"));
    listClients.add(new ListClient("Lực", "06/06/1997","TH"));
    request.setAttribute("cl", listClients);
%>
<table>
    <tr>
        <th>Name</th>
        <th>BirthDay</th>
        <th>Address</th>
    </tr>
    <c:forEach items="${cl}" var = "cs">
        <tr>
            <td>${cs.name}</td>
            <td>${cs.date}</td>
            <td>${cs.add}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>