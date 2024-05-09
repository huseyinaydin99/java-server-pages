<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Oluşturduğumuz Appletlerin Kullanılması</title>
    </head>
    <body bgcolor="#6699ff">
        
        <h1>Oluşturduğumuz Appletlerin Kullanılması</h1>
        <applet archive="Applet_Olusturma_Projesi.jar"
                code="AppletCalismaDurumlari.class"
                height="250" width="300" >
        </applet>
        <hr />
        <applet type="applet" archive="Applet_Olusturma_Projesi.jar" 
                code="JAppletSinifiniMirasAlanSinif.class"
                height="250" width="300" >
        </applet>
        <jsp:plugin type="applet"
		archive="Applet_Olusturma_Projesi.jar"
		code="AppletCalismaDurumlari.class" height="250" width="300">
		<jsp:fallback>
   			<p>Unable to load applet</p>
   		</jsp:fallback>
	</jsp:plugin>

    </body>
</html>