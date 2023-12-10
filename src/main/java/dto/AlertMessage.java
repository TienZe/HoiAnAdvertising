package dto;

public class AlertMessage {
	private String message;
	private String type;
	
	public AlertMessage(String message, String type) {
		this.message = message;
		this.type = type;
	}
	
	public AlertMessage(String message) {
		this(message, "");
	}
	
	public String getMessage() {
		return message;
	}
	
	public String getType() {
		return type;
	}
}
