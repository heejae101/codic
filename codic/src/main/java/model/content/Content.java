package model.content;

public class Content {
	
	private int content_id;
	private int category_no;
	private String content_title;
	private String content_text;
	private String content_views;
	private int content_creation_date;
	
	public Content(int content_id, int category_no, String content_title, String content_text, String content_views,
			int content_creation_date) {
		super();
		this.content_id = content_id;
		this.category_no = category_no;
		this.content_title = content_title;
		this.content_text = content_text;
		this.content_views = content_views;
		this.content_creation_date = content_creation_date;
	}

	public int getContent_id() {
		return content_id;
	}

	public void setContent_id(int content_id) {
		this.content_id = content_id;
	}

	public int getCategory_no() {
		return category_no;
	}

	public void setCategory_no(int category_no) {
		this.category_no = category_no;
	}

	public String getContent_title() {
		return content_title;
	}

	public void setContent_title(String content_title) {
		this.content_title = content_title;
	}

	public String getContent_text() {
		return content_text;
	}

	public void setContent_text(String content_text) {
		this.content_text = content_text;
	}

	public String getContent_views() {
		return content_views;
	}

	public void setContent_views(String content_views) {
		this.content_views = content_views;
	}

	public int getContent_creation_date() {
		return content_creation_date;
	}

	public void setContent_creation_date(int content_creation_date) {
		this.content_creation_date = content_creation_date;
	}
	
	@Override
	public String toString() {
		return String.format("content_id : %s\ncategory_no : %s\ncontent_title : %s\ncontent_text : %s\ncontent_views : %s\ncontent_creation_date : %s", content_id,category_no,content_title,content_text,content_views,content_creation_date);
	}
	
}
