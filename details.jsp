<%-- 
    Document   : details
    Created on : Sep 16, 2024, 8:22:37 PM
    Author     : game
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details Page</title>
    </head>
    <body>
        <%
            String webName = (String)request.getAttribute("webName");
            String visitSite = (String)request.getAttribute("visitSite");
            String userName = (String)request.getAttribute("userName");
            String url = (String)request.getAttribute("url");
        %>
        <table>
            <tr>
                <td>WEBSITE NAME:</td>
                <td><%=webName%></td>
            </tr>
            <tr>
                <td>VISIT SITE:</td>
                <td><%=visitSite%></td>
            </tr>
            <tr>
                <td>USERNAME:</td>
                <td><%=userName%></td>
            </tr>
            <tr>
                <td>CPANEL URL:</td>
                <td><input type="button" value="Click me"/></td>
            </tr>
            <tr>
                <td><input type="button" value="Moepi Publishing"/></td>
                <td><input type="button" value="Tekete"/></td>
            </tr>
            <tr>
                <td><input type="button" value="clear"/></td>
                <td><input type="button" value="Exit"/></td>
            </tr>
        </table>
    </body>
</html>
