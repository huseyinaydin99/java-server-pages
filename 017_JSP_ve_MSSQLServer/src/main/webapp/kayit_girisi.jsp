<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kayıt Girişi</title>
</head>

<script>
	function formuKontrolEdenFonksiyon(form) {
		if (form.No.value == '') {
			alert("No alanını boş geçemezsiniz.");
			return false;
		}
		if (form.Adi.value == '') {
			alert("Adı alanını boş geçemezsiniz.");
			return false;
		}
	}
</script>

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

	<h1>Kayıt Girişi</h1>

	<form id="kayit_girisi_formu" name="kayit_girisi_formu"
		onsubmit="return formuKontrolEdenFonksiyon(document.kayit_girisi_formu);"
		method="post" action="kayit_girisi_sonucu.jsp">
		<table width="350" border="0">
			<tr>
				<td width="153">No</td>
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
				<td>Fakülte</td>
				<td><input type="text" name="Fakulte" id="Fakulte" /></td>
			</tr>
			<tr>
				<td>Bölüm</td>
				<td><input type="text" name="Bolum" id="Bolum" /></td>
			</tr>

			<tr>
				<td>&nbsp;</td>
				<td>
					<input type="reset" name="vazgec" id="vazgec"
						value="Vazgeç" />
					<input type="submit" name="onay" id="onay"
						value="Kaydet" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>