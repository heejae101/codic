package model.content;

public class Content {
	private int content_id;
	private String category_name;
	private String content_title;
	private int content_views;
	private String file_path;
	private String content_path;

	public Content(int content_id, String category_name, String content_title, int content_views, String file_path, String content_path) {
		this.content_id = content_id;
		this.category_name = category_name;
		this.content_title = content_title;
		this.content_views = content_views;
		this.file_path = file_path;
		this.content_path = content_path;
	}
	
	public Content(int content_id, String content_title, int content_views, String content_path) {
		super();
		this.content_id = content_id;
		this.content_title = content_title;
		this.content_views = content_views;
		this.content_path = content_path;
	}

	public int getContent_id() {
		return content_id;
	}

	public void setContent_id(int content_id) {
		this.content_id = content_id;
	}

	public String getCategory_name() {
		return category_name;
	}
	

	public String getContent_path() {
		return content_path;
	}

	public void setContent_path(String content_path) {
		this.content_path = content_path;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public String getContent_title() {
		return content_title;
	}

	public void setContent_title(String content_title) {
		this.content_title = content_title;
	}

	public int getContent_views() {
		return content_views;
	}

	public void setContent_views(int content_views) {
		this.content_views = content_views;
	}

	public String getFile_path() {
		return file_path;
	}

	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}

	@Override
	public String toString() {
		return "Content [content_id=" + content_id + ", category_name=" + category_name + ", content_title="
				+ content_title + ", content_views=" + content_views + ", file_path=" + file_path + ", content_path="
				+ content_path + "]";
	}
	
}
