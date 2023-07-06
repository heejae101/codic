package model.content;

public class ContentRequestDto {
	private String text;
	
	public ContentRequestDto(String text) {
		this.text = text;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}
	
	
}
