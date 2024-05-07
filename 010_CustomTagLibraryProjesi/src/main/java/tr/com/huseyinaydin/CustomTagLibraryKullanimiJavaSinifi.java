package tr.com.huseyinaydin;

import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class CustomTagLibraryKullanimiJavaSinifi implements Tag, Serializable {

	private PageContext pc = null;
	private Tag parent = null;
	private String mesajimiz = null;

	@Override
	public void setPageContext(PageContext p) {
		pc = p;
	}

	@Override
	public void setParent(Tag t) {
		parent = t;
	}

	@Override
	public Tag getParent() {
		return parent;
	}

	public void setMesajimiz(String gelenMesaj) {
		mesajimiz = gelenMesaj;
	}

	public String getMesajimiz() {
		return mesajimiz;
	}

	@Override
	public int doStartTag() throws JspException {
		try {
			if (mesajimiz != null) {
				pc.getOut().write(" Selamlar,<br>");
				pc.getOut().write(mesajimiz + " <strong style=" + "color:blueviolet" + ">merhabalar gardaş </strong> ");
			} else {

				pc.getOut().write("Bu bir uyarı mesajıdır.");
				pc.getOut().write(" Mesaj yok.");
			}

		} catch (IOException e) {
			throw new JspTagException("JSP etiket istisnası meydana geldi.");
		}
		return SKIP_BODY;
	}

	@Override
	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}

	@Override
	public void release() {
		pc = null;
		parent = null;
		mesajimiz = null;
	}
}
