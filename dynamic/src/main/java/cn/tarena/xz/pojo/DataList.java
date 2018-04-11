package cn.tarena.xz.pojo;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class DataList {
	private String message;
	private Object data;
	
	public DataList() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	public String send() {
		ObjectMapper m = new ObjectMapper();  
		String data = null;
		try {
			data = m.writeValueAsString(this);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return data;
	}
	
}
