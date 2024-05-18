package tr.com.huseyinaydin;

//بسم الله الرحمن الرحيم

/**
* @author Huseyin_Aydin
* @category Java, Java Server Pages.
* @since 1994
*/

class JSPException extends Exception {
	private String message;

	public JSPException(String message) {
		super();
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}