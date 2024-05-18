<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Request Nesnesi ve Harici Sayfa Kullanımına Örnek JSP Sayfamız 2</title>
</head>

<body>
    <h3>
        <font face="arial" color="darkblue">
            requestNesnesineOrnek2.jsp <br>
            Sayfasından requestHariciSayfa.jsp sayfasına <br>
            gönderilenlen bilgi :<br>
        </font>
        <%request.setAttribute("aktarilanbilgi","<br>hi.!," +
            "<br>selamlar" +
            "<br>merhabalar");%>
    </h3>

    <hr>
    <h3>
        <jsp:include page="requestHariciSayfa.jsp" />
    </h3>
</body>
</html>