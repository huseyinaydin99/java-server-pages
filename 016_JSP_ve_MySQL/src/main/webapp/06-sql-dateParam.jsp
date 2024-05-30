
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sql:dateParam Etiketi</title>
</head>
<body>
	<h2>JSTL SQL sql:dateParam Tag</h2>

	<sql:setDataSource var="veriKaynagi" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/huseyin_aydin_db" user="root" password="toor" />

	<sql:query dataSource="${veriKaynagi}" sql="SELECT * FROM personel" var="sorgu" />

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
			<th>E-POSTA</th>
			<th>GÖREVİ</th>
			<th>MAAŞI</th>
		</tr>
		<c:forEach var="satir" items="${sorgu.rows}">
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

	<%@ page import="java.util.Date, java.text.*"%>

	<%
	Date tarih = new Date("10 October 2024");
	java.util.Date zaman = new java.util.Date();
	int secilenPersonelid = 3;

	System.out.println("Konsolda zaman : " + zaman);
	%>
	Web sayfasında zaman 1 :
	<%=zaman%>
	<br> Web sayfasında zaman 2 :
	<%
	out.println(String.valueOf(zaman));
	%>

	<c:set var="parametrePersonelid" value="<%=secilenPersonelid%>" />
	<c:set var="parametrePersonelAdi" value="Hüseyin" />
	<c:set var="parametrePersonelSoyadi" value="AYDIN" />
	<c:set var="parametrePersonelMaasi" value="8888" />
	<c:set var="parametrePersonelGorevi" value="Java & .NET" />

	<sql:update dataSource="${veriKaynagi}" var="guncelle_silme_ekleme">    
		UPDATE firmaveritabani.personel
		SET
		personelgorevi = ?,
		personeladi = ?,
		personelsoyadi = ?,
		personelkayittarihi = ?, 
		personelmaasi = ?
		WHERE personelid = ?
    <sql:param value="${parametrePersonelGorevi}" />
		<sql:param value="${parametrePersonelAdi}" />
		<sql:param value="${parametrePersonelSoyadi}" />
		<sql:dateParam value="<%=tarih%>" type="DATE" />
		<sql:param value="${parametrePersonelMaasi}" />
		<sql:param value="${parametrePersonelid}" />
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
			<th>KAYIT TARİHİ</th>
		</tr>
		<c:forEach var="satir2" items="${sorgu2.rows}">
			<tr>
				<td><c:out value="${satir2.personelid}" /></td>
				<td><c:out value="${satir2.personeladi}" /></td>
				<td><c:out value="${satir2.personelsoyadi}" /></td>
				<td><c:out value="${satir2.personeleposta}" /></td>
				<td><c:out value="${satir2.personelgorevi}" /></td>
				<td><c:out value="${satir2.personelmaasi}" /></td>
				<td><c:out value="${satir2.personelkayittarihi}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>