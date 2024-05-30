<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>sql:param Etiketi</title>
</head>
<body>
	<h2>JSTL SQL sql:param Tag</h2>

	<sql:setDataSource var="veriKaynagi" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/huseyin_aydin_db" user="root" password="toor" />

	<!--  
  		<sql:query dataSource="${veriKaynagi}" sql="SELECT * FROM personel" var="sorgu" />
  	-->

	<sql:query dataSource="${veriKaynagi}" var="sorgu">
		SELECT personel.personelid,
		    personel.personeladi,
		    personel.personelsoyadi,
		    personel.personeleposta,
		    personel.personelgorevi,
		    personel.personelmaasi
		FROM huseyin_aydin_db.personel;
	</sql:query>

	<table border="1">
		<thead>
			<tr>
				<th>Personel Bilgileri</th>
			</tr>
		</thead>

		<tbody>
			<tr>
				<td>Bu sayfadan diğer sayfaya değer göndereceğiz.</td>
			</tr>
			<tr>
				<td>
					<form action="05-sql-param2Cevap.jsp">
						<strong>Personel Adı Soyadı:</strong>
						<select name="personelidParametresi">
							<c:forEach var="adisoyadiDegerleri" items="${sorgu.rows}">
								<option value="${adisoyadiDegerleri.personelid}">
									${adisoyadiDegerleri.personeladi}
									${adisoyadiDegerleri.personelsoyadi}
								</option>
							</c:forEach>
						</select>
						<input type="submit" value="Gönder" name="gonder" />
					</form>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>