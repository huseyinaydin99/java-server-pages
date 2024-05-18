<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bu benim ilk JSP sayfam</title>
    </head>
    <body>
        <h1>Selamlar...</h1><br>
        <h1>Merhabalar...</h1>

         <hr>
            <%@ page language="java" %>
            <% out.println("Bu benim "); %>
            <% out.println("ilk JSP sayfam"); %>
         <hr>

        Tarih-Saat : <%= new java.util.Date() %>
    </body>
</html>