package com.ruicai.entity;

public class Student {

	private String userName;
	private String password;
	private int sex;
	private String grade;
	private String QQ;
	private String weChat;
	private String tel;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getQQ() {
		return QQ;
	}

	public void setQQ(String qQ) {
		QQ = qQ;
	}

	public String getWeChat() {
		return weChat;
	}

	public void setWeChat(String weChat) {
		this.weChat = weChat;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Student() {
		super();
	}

	public Student(String userName, String password, int sex, String grade, String qQ, String weChat, String tel) {
		super();
		this.userName = userName;
		this.password = password;
		this.sex = sex;
		this.grade = grade;
		QQ = qQ;
		this.weChat = weChat;
		this.tel = tel;
	}

}
