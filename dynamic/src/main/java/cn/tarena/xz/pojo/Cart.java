package cn.tarena.xz.pojo;

public class Cart {
	private String cId;
	private String uId;
	private String gId;
	private Integer count;
	
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getgId() {
		return gId;
	}
	public void setgId(String gId) {
		this.gId = gId;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	
}
