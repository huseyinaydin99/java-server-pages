<%@page contentType="text/html" pageEncoding="windows-1254"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1254">
<title>ETIKET CEVAP SAYFASI</title>
</head>
<body>
	<h1>CEVAP SAYFASI</h1>
	<jsp:useBean id="mybean" scope="session"
		class="tr.com.huseyinaydin.NameHandler" />
	<jsp:setProperty name="mybean" property="name" />
	<h1>
		Hello,
		<jsp:getProperty name="mybean" property="name" />!
	</h1>

	<jsp:useBean id="mybean2" scope="session"
		class="tr.com.huseyinaydin.Hesapla" />
	<jsp:setProperty name="mybean2" property="sayi" />
	<h1>
		sayi1,
		<jsp:getProperty name="mybean2" property="sayi" />!
	</h1>
</body>
</html>