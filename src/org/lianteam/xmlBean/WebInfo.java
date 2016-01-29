package org.lianteam.xmlBean;
import javax.xml.bind.annotation.XmlRootElement;
/*
 * 网站信息配置 webinfo对应的映射类
 * 
 */
@XmlRootElement(name="WebInfo")
public class WebInfo {
	private String keyWords;
	private String description;
	private String name;
	private String address;
	private String tel;
	private String fox;
	private String email;
	private String copyright;
	private String support1;
	private String support2;
	private String beian;
	private String content1;
	private String content2;
	private int pagesize;
	private String myscript;
	//getter...setter...
	public String getKeyWords() {
		return keyWords;
	}
	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getFox() {
		return fox;
	}
	public void setFox(String fox) {
		this.fox = fox;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCopyright() {
		return copyright;
	}
	public void setCopyright(String copyright) {
		this.copyright = copyright;
	}
	public String getSupport1() {
		return support1;
	}
	public void setSupport1(String support1) {
		this.support1 = support1;
	}
	public String getSupport2() {
		return support2;
	}
	public void setSupport2(String support2) {
		this.support2 = support2;
	}
	public String getBeian() {
		return beian;
	}
	public void setBeian(String beian) {
		this.beian = beian;
	}
	public String getContent1() {
		return content1;
	}
	public void setContent1(String content1) {
		this.content1 = content1;
	}
	public String getContent2() {
		return content2;
	}
	public void setContent2(String content2) {
		this.content2 = content2;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public String getMyscript() {
		return myscript;
	}
	public void setMyscript(String myscript) {
		this.myscript = myscript;
	}
	
	
}
