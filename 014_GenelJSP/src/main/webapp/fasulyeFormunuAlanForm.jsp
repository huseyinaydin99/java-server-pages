<%@page contentType="text/html" pageEncoding="UTF-8" %>
<jsp:useBean id="paketimiz" type="tr.com.huseyinaydin.paketimiz.BizimSinifimiz" class="tr.com.huseyinaydin.paketimiz.BizimSinifimiz" scope="session" />
<jsp:setProperty name="paketimiz" property="*" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Beans(Fasulyeler) Formunu Alan Form</title>
</head>

<body>
    <h1>Beans(Fasulyeler) Formunu Alan Form</h1>
    <a href="fasulyeFormunuGoster.jsp">Fasulye Formunu Göstermek için Tıklayınız.</a>
</body>

</html>