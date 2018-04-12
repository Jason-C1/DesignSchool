package cn.tarena.xz.pojo;

public class Course {
	private String cId;
	private String cName;
	private String cNum;
	private String tId;
	private String tName;
	private String cCount;
	public String getcCount() {
		return cCount;
	}
	public void setcCount(String cCount) {
		this.cCount = cCount;
	}
	public Course() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getcNum() {
		return cNum;
	}
	public void setcNum(String cNum) {
		this.cNum = cNum;
	}
	public String gettId() {
		return tId;
	}
	public void settId(String tId) {
		this.tId = tId;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	
}
