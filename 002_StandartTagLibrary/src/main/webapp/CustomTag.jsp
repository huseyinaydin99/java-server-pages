<%@ taglib uri="/WEB-INF/tld/terstenyaz.tld" prefix="onEkTagimiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Custom Tag library Kullanımı</title>
</head>
<body>
	<table width="390" height="202" border="4">
		<tr>
			<td width="184" align="center" bgcolor="#FFFF66">
				<h2>
					<em>DÜZ </em>
				</h2>
			</td>
			<td width="184" align="center" bgcolor="#FFFF66">
				<h2>
					<em>TERS</em>
				</h2>
			</td>
		</tr>
		<tr>
			<td bgcolor="#FFFFCC"><h2>Huseyin Aydin</h2></td>
			<td align="right" bgcolor="#FFFFCC">
				<h2>
					<onEkTagimiz:tesineyaz>Huseyin Aydin</onEkTagimiz:tesineyaz>
				</h2>
			</td>
		</tr>
		<tr>
			<td bgcolor="#D7EBFF"><h2>Bugra Dost</h2></td>
			<td align="right" bgcolor="#D7EBFF">
				<h2>
					<onEkTagimiz:tesineyaz>Bugra Dost</onEkTagimiz:tesineyaz>
				</h2>
			</td>
		</tr>
	</table>
</body>
</html>
