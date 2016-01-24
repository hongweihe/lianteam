package org.lianteam.pojo;

/*这是分类表对应的POJO
 * 
 * */
public class Category {
	private int id;
	private String name;
	private int pid;
	private Boolean is_title;
	private int sortrank;
	private String url;
	//getter...setter...
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public Boolean getIs_title() {
		return is_title;
	}
	public void setIs_title(Boolean is_title) {
		this.is_title = is_title;
	}
	public int getSortrank() {
		return sortrank;
	}
	public void setSortrank(int sortrank) {
		this.sortrank = sortrank;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
}
