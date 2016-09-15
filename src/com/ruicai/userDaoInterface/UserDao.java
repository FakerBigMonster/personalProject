package com.ruicai.userDaoInterface;

import com.ruicai.entity.Activity;
import com.ruicai.entity.Student;

public interface UserDao {

	public boolean doLogin(String userName,String password);
	
	public boolean doValidate(Student stu);
	
	public boolean checkUser(String userName);
	
	public Activity findRencentActivity();
	
	public String updateActivity(Activity act);
	
	public int[] vote();
}
