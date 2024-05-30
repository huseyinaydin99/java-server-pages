<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL SQL Tagları ile Veritabanı İşlemleri</title>
</head>
<body>
	<h2>JSTL SQL Tagları ile Veritabanı İşlemleri</h2>

	<table border="1" width="500">
		<thead>
			<tr>
				<th>Örneğin Adı</th>
				<th>Adresi</th>
			</tr>
		</thead>
		<tbody>

			<tr>
				<td>sql:setDataSource</td>
				<td><a href="01-sql-setDataSource.jsp">DataSource ile
						veritabanına bağlantı kurma işlemleri</a></td>
			</tr>

			<tr>
				<td>sql:query</td>
				<td><a href="02-sql-query.jsp">Veri sorgulama işlemleri</a></td>
			</tr>

			<tr>
				<td>sql:update</td>
				<td><a href="03-sql-update.jsp">Veri ekleme, güncelleme ve
						silme işlemleri</a></td>
			</tr>

			<tr>
				<td>sql:param</td>
				<td><a href="04-sql-param.jsp">Parametre ile çalışma
						işlemleri</a></td>
			</tr>

			<tr>
				<td>sql:param</td>
				<td><a href="05-sql-param2.jsp">Bir sayfadan diğerine
						parametre gönderme işlemleri</a></td>
			</tr>

			<tr>
				<td>sql:dateParam</td>
				<td><a href="06-sql-dateParam.jsp">Tarih işlemleri
						java.util.Date value.</a></td>
			</tr>

			<tr>
				<td>sql:transaction</td>
				<td><a href="07-sql-transaction.jsp">Transaction işlemleri</a></td>
			</tr>
		</tbody>
	</table>
</body>
</html>