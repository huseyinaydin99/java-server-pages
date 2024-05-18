<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="../4-JSTL SQL Tags/style.css">
<title>JSTL XML Tags</title>
<body>
	<h2>JSTL XML Tags Kullanımı</h2>
	<c:import url="arabalar.xml" var="url" />
	<x:parse xml="${url}" var="XmlBelgesi" />

	<table border="1">
		<thead>
			<tr>
				<th><b>MARKASI</b></th>
				<th><b>MODELİ</b></th>
				<th><b>RENGİ</b></th>
			</tr>
		</thead>
		<tbody>

			<x:forEach var="otomobil" select="$XmlBelgesi/arabalar/araba">
				<tr>
					<td><font color="red"><x:out select="$otomobil/marka" /></font></td>
					<td><font color="red"><x:out select="$otomobil/model" /></font></td>
					<td><font color="red"><x:out select="$otomobil/renk" /></font></td>
				</tr>
			</x:forEach>

		</tbody>
	</table>

</body>
</html>