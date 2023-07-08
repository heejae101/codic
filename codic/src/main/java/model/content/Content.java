package model.content;

public class Content {
	
	private String category_name;
	private String content_title;
	private int content_views;
	private String file_path;

	public Content(String category_name, String content_title, int content_views, String file_path) {
		this.category_name = category_name;
		this.content_title = content_title;
		this.content_views = content_views;
		this.file_path = file_path;
	}
	
	public String getCategory_name() {
		return category_name;
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
	    return String.format("category_name:%s\ncontent_title:%s\ncontent_views:%d\nfile_path:%s\n",category_name,content_title,content_views,file_path);
	}
	
}
