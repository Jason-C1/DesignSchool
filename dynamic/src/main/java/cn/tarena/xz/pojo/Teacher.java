package cn.tarena.xz.pojo;

public class Teacher {
	private String tId;
	private String tName;
	private String tpic;
	private String cCount;//老师教了的课程数  sql用count语句
	private String classes;
	public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	public Teacher() {
		super();
		// TODO Auto-generated constructor stub
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

	public String getTpic() {
		return tpic;
	}

	public void setTpic(String tpic) {
		this.tpic = tpic;
	}

	public String getcCount() {
		return cCount;
	}

	public void setcCount(String cCount) {
		this.cCount = cCount;
	}

	
}
