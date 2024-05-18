<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JSP Page</title>
</head>

<body>
	<jsp:useBean id="bean" class="tr.com.huseyinaydin.asamaliPaketi.DorgulamaSinifi" scope="session" />
	<jsp:setProperty name="bean" property="phone" />
	<jsp:setProperty name="bean" property="address" />
	<jsp:setProperty name="bean" property="city" />
	<jsp:setProperty name="bean" property="country" />
	<jsp:setProperty name="bean" property="state" />

	<%
		tr.com.huseyinaydin.asamaliPaketi.DorgulamaSinifi register = (tr.com.huseyinaydin.asamaliPaketi.DorgulamaSinifi) session.getAttribute("bean");
		register.validate(request);
		String errors = (String) request.getAttribute("errors");
		if (errors != null && errors.trim().length() > 0) {
		%>
		<jsp:forward page="multipage1.jsp"></jsp:forward>
		<%
		}
	%>

	<h1>Veriler geçerli.</h1>
</body>
</html>