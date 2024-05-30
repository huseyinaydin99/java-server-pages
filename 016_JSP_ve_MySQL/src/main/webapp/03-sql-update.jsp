
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sql:update Etiketi</title>
</head>
<body>
	<h2>JSTL SQL sql:update Tag</h2>

	<sql:setDataSource var="veriKaynagi" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/huseyin_aydin_db" user="root" password="toor" />

	<sql:query dataSource="${veriKaynagi}" sql="SELECT * FROM personel"
		var="sorgu" />

	<!--
    <sql:query dataSource="${veriKaynagi}" var="sorgu">
       SELECT * FROM personel;
    </sql:query>
    -->

	<table border="1" width="100%">
		<tr>
			<th>ID</th>
			<th>ADI</th>
			<th>SOYADI</th>
			<th>MAAŞI</th>
		</tr>
		<c:forEach var="satir" items="${sorgu.rows}">
			<tr>
				<td><c:out value="${satir.id}" /></td>
				<td><c:out value="${satir.adi}" /></td>
				<td><c:out value="${satir.soyadi}" /></td>
				<td><c:out value="${satir.maasi}" /></td>
			</tr>
		</c:forEach>
	</table>

	<sql:update dataSource="${veriKaynagi}" var="guncelle_silme_ekleme">
		INSERT INTO huseyin_aydin.db.personel
		(adi, soyadi, eposta, cinsiyeti, maasi)
		VALUES
		("Huseyin", "Aydin", "huseyinaydin99@gmail.com", "Java and .NET Developer", "9999");
	</sql:update>

	<sql:query dataSource="${veriKaynagi}" var="sorgu2">
       SELECT * FROM personel;
    </sql:query>

	<table border="1" width="100%">
		<tr>
			<th>ID</th>
			<th>ADI</th>
			<th>SOYADI</th>
			<th>E-POSTA</th>
			<th>GÖREVİ</th>
			<th>MAAŞI</th>
		</tr>
		<c:forEach var="satir" items="${sorgu2.rows}">
			<tr>
				<td><c:out value="${satir.personelid}" /></td>
				<td><c:out value="${satir.personeladi}" /></td>
				<td><c:out value="${satir.personelsoyadi}" /></td>
				<td><c:out value="${satir.personeleposta}" /></td>
				<td><c:out value="${satir.personelgorevi}" /></td>
				<td><c:out value="${satir.personelmaasi}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>