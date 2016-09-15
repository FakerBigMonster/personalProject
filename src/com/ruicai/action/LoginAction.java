package com.ruicai.action;

import java.util.Date;

/**
 * 动态处理登录和注册相关业务
 * 
 * @return
 */
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ruicai.dao.UserDao;
import com.ruicai.entity.Activity;
import com.ruicai.entity.Student;

public class LoginAction extends ActionSupport implements ModelDriven<Student> {

	private String userName;
	private String password;
	private String tip;
	private Student student = new Student();
	
	private String title;
	private String content;
	private String address;
	private String date;
	private Date releaseDate;
	private int countPeople;
	private int countInterest;
	private int countNotInterest;
	
	public int getCountPeople() {
		return countPeople;
	}

	public void setCountPeople(int countPeople) {
		this.countPeople = countPeople;
	}

	public int getCountInterest() {
		return countInterest;
	}

	public void setCountInterest(int countInterest) {
		this.countInterest = countInterest;
	}

	public int getCountNotInterest() {
		return countNotInterest;
	}

	public void setCountNotInterest(int countNotInterest) {
		this.countNotInterest = countNotInterest;
	}

	
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}



	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

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

	@Override
	public String execute() throws Exception {

		return super.execute();
	}

	@Override
	public Student getModel() {
		// TODO Auto-generated method stub
		return student;
	}


	
	/**
	 * 处理登录
	 * 
	 * @return
	 */
	public String doLogin() {
		UserDao ud = new UserDao();
		Activity a=null;
		
//		if(student.getUserName().equals("admin")&&student.getPassword().equals("admin")){
//			
//			a=ud.findRencentActivity();
//			setTitle(a.getTitle());
//			setContent(a.getContent());
//			setAddress(a.getAddress());
//			setDate(a.getDate());
//			setReleaseDate(a.getReleaseDate());
//			setCountNotInterest(a.getCountPeople()-a.getCountInterest());
//			setCountInterest(a.getCountInterest());
//			return "main";
//		}

		if (student.getUserName() == null || student.getUserName().equals("") || student.getPassword() == null
				|| student.getPassword().equals("")) {
			setTip("用户名或密码不能为空！");
			return "validate";
		}
		boolean flag = ud.doLogin(student.getUserName(), student.getPassword());
		if (flag) {
			a=ud.findRencentActivity();
			setTitle(a.getTitle());
			setContent(a.getContent());
			setAddress(a.getAddress());
			setDate(a.getDate());
			setReleaseDate(a.getReleaseDate());
			
			setCountNotInterest(a.getCountPeople()-a.getCountInterest());
			setCountInterest(a.getCountInterest());
			setTip("登录成功！");
			return "main";
		}else{
			setTip("用户名或密码错误！登录失败！");
		}
		return "validate";
	}

	/**
	 * 处理注册 student.getUserName().equals("") || student.getUserName() == null ||
	 * student.getUserName().equals("")
	 * 
	 * @return
	 */
	public String doValidate() {

		if (student.getUserName().equals("") || student.getUserName() == null || student.getPassword().equals("")
				|| student.getPassword() == null || student.getGrade().equals("") || student.getGrade() == null
				|| student.getQQ().equals("") || student.getQQ() == null
				|| student.getTel() == null || student.getTel().equals("")) 
		{
			setTip("亲！您的信息没填完整哦！");
			return "validate";
		}
		UserDao ud = new UserDao();
		if(ud.doValidate(student)){
			setTip("注册成功！快点击登录吧！");
			return "validate";
		}

		return "validate";
	}
}
