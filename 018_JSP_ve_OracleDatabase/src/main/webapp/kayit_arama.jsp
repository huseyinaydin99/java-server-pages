<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kayıt Arama</title>
</head>
<body>

	<!--MENU BAŞI -->
	<table width="550" border="0">
		<tr>

			<td width="43"><a href="index.jsp"> <img
					src="resimler/anasayfa.png" alt="Kayıt Arama" width="32"
					height="32" border="0">
			</a></td>
			<td width="141"><a href="index.jsp" title="Anasayfa">Anasayfa</a></td>


			<td width="43"><a href="kayit_arama.jsp"> <img
					src="resimler/ara.png" alt="Kayıt Arama" width="32" height="32"
					border="0">
			</a></td>
			<td width="141"><a href="kayit_arama.jsp" title="Kayıt Arama">Kayıt
					Arama</a></td>

			<td width="43"><a href="kayit_girisi.jsp"> <img
					src="resimler/ekle.png" alt="Yeni Kayıt Girişi" width="32"
					height="32" border="0">
			</a></td>
			<td width="141"><a href="kayit_girisi.jsp"
				title="Yeni Kayıt Girişi">Yeni Kayıt Girişi</a></td>
		</tr>
	</table>

	<!--MENU SONU -->

	<h1>Kayıt Arama</h1>

	<form id="kayit_arama_formu" name="kayit_arama_formu" method="post"
		action="kayit_arama_sonuclari.jsp">
		<table width="350" border="0">
			<tr>
				<td width="153">Öğrenci No</td>
				<td width="181"><input type="text" name="No" id="No" /></td>
			</tr>
			<tr>
				<td>Adı</td>
				<td><input type="text" name="Adi" id="Adi" /></td>
			</tr>
			<tr>
				<td>Soyadı</td>
				<td><input type="text" name="Soyadi" id="Soyadi" /></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><input type="reset" name="vazgec" id="vazgec"
					value="Vazgeç" /> <input type="submit" name="ara" id="ara"
					value="Ara" /></td>
			</tr>
		</table>
	</form>

</body>
</html>