<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.io.* , java.util.* , java.sql.*"%>
<%@ page import="javax.servlet.http.* , javax.servlet.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>sql:setDataSource Etiketi</title>
</head>
<body>
    <h2>JSTL sql:setDataSource Tag</h2>

    <sql:setDataSource var="veriKaynagi" 
                       driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost/huseyin_aydin_db"
                       user="root"
                       password="toor"/>

    <sql:query dataSource="${veriKaynagi}" sql="SELECT * FROM personel" var="sonuc" />

    <!--
    <sql:query dataSource="${veriKaynagi}" var="sonuc">
       SELECT * FROM personel;
    </sql:query>
    -->   
</body>
</html>