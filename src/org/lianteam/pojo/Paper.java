package org.lianteam.pojo;

import java.util.Date;

public class Paper {
	//这是t_paper的映射类
	private int id;
	private int category_id;
	private String title;
	private String author;
	private Date creattime;
	private String content;
	private String file;
	private String volume;
	private String qikan;
	public String getQikan() {
		return qikan;
	}
	public void setQikan(String qikan) {
		this.qikan = qikan;
	}
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getCreattime() {
		return creattime;
	}
	public void setCreattime(Date creattime) {
		this.creattime = creattime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getVolume() {
		return volume;
	}
	public void setVolume(String volume) {
		this.volume = volume;
	}
	
}
