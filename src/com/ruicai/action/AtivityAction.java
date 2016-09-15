package com.ruicai.action;

import com.opensymphony.xwork2.ActionSupport;
import com.ruicai.dao.UserDao;

public class AtivityAction extends ActionSupport {

	private String userName;
	private int result;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getResult() {
		return result;
	}

	@Override
	public String execute() throws Exception {
		UserDao ud = new UserDao();
		
		int[] arr=ud.vote();
		
		result = arr[0];
		
		return SUCCESS;
	}
	
}
