package org.lianteam.pojo;

public class FocusImage {
	//对应数据库中t_focusimage
	private int id;
	private int category_id;
	private String image;
	private String alt;
	private String url;
	private int sortrank;
	private String content;
	private String title;
	//getter...setter...
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getAlt() {
		return alt;
	}
	public void setAlt(String alt) {
		this.alt = alt;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getSortrank() {
		return sortrank;
	}
	public void setSortrank(int sortrank) {
		this.sortrank = sortrank;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
	
	
}
