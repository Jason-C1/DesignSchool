package cn.tarena.xz.pojo;

public class ShowUser {
	private String uId;
	private String username;
	private String picPath;
	private String cCount;//学生学了的学习量， sql用sum语句

	public ShowUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPicPath() {
		return picPath;
	}

	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}

	public String getcCount() {
		return cCount;
	}

	public void setcCount(String cCount) {
		this.cCount = cCount;
	}
	
	
	
}
