package com.ruicai.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ruicai.dao.UserDao;
import com.ruicai.entity.Student;

import net.sf.json.JSONObject;

public class JsonAction extends ActionSupport {

	private String userName;
	private String result;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getResult() {
		return result;
	}

	@Override
	public String execute() throws Exception {
//		UserDao ud = new UserDao();
//		if (ud.checkUser(userName)) {
//			result = "该姓名已经被注册了！可能重名了！请在名字后加上数字看看！";
//		}

//		List<String> list=new ArrayList<String>();
//		list.add("tom");
//		list.add("123");
//		JSONObject jo=JSONObject.fromObject(list);
//		result=jo.toString();
//		int[] arr={1,2,3};
//		JSONObject jo=JSONObject.fromObject(arr);
		Student stu=new Student("tom", "123", 1, "java", "972031129", "xz", "13657211670");
		 JSONObject jo=new JSONObject();
		jo.put("stu", stu);
		result=jo.toString();
		
		// if (userName.equals("tom")) {
		// result = "该姓名已经被注册了！可能重名了！请在名字后加上数字看看！";
		// }
		return SUCCESS;
	}

}
