<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Custom Tag Library Kullanımı</title>

<style type="text/css">
p {
	font-weight: bold;
	font-family: Tahoma, Sans-Serif;
	font-size: 20pt;
}
</style>

</head>

<body>
	<p style="color: brown">Custom Tag Library Kullanımı</p>
	<%@ taglib uri="/WEB-INF/tlds/CustomTagLibraryKullanimiTLD.tld" prefix="onEkAdi"%>

	<p>
		<strong style="color: dodgerblue">Mesajımız :</strong>
		<strong
			style="background: yellow"> 
			<strong style="color: tomato">
				<br>
				Selamlar
			</strong>
			<onEkAdi:CustomTagLibraryKullanimiTLDadi mesajimiz="Selamlar " />
			<strong style="color: indianred">
				Selamlar
			</strong>
		</strong>
	</p>
	<hr>
	<p>
		<strong style="color: crimson">Dikkat :</strong>
		<br>
		<strong
			style="background: bisque"> <onEkAdi:CustomTagLibraryKullanimiTLDadi />
		</strong>
	</p>

</body>
</html>