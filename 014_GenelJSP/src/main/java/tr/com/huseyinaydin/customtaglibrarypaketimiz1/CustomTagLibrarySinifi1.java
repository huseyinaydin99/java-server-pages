package tr.com.huseyinaydin.customtaglibrarypaketimiz1;

//بسم الله الرحمن الرحيم

/**
 * @author Huseyin_Aydin
 * @category Java, Java Server Pages.
 * @since 1994
 */

import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.TagSupport;

public class CustomTagLibrarySinifi1 extends TagSupport {

	public int doStartTag() {
		try {
			JspWriter out = pageContext.getOut();
		            out.println( "Paket Adı : tr.com.huseyinaydin.customtaglibrarypaketimiz1"
                                  + "</br>Sınıf Adı : CustomTagLibrarySinifi1"
                                  + "</br><font color=blue > Mesaj :</font> "
                                  + "<font color=red >Selamun,"
                                  + "</br>Aleyküm. </font>");
		} catch (IOException e) {
       			System.out.println( "CustomTagLibrarySinifi1 da Hata : " + e.toString() );
		}
    	return SKIP_BODY;
	}
}