package com.ruicai.test;

import java.util.Date;

import javax.sound.midi.Synthesizer;

import com.ruicai.dao.UserDao;
import com.ruicai.entity.Activity;
import com.ruicai.entity.Student;

public class LoginValidateTest {

	
	public static void main(String[] args) {
		UserDao ud=new UserDao();
		//boolean flag=ud.doValidate(new Student("熊昭","222",1,"111","111","111","111"));
		//boolean flag=ud.checkUser("tom");
//		if(flag){
//			System.out.println("success");
//		}
		
//	Activity a	=ud.findRencentActivity();
//	System.out.println(a.getTitle()+a.getReleaseDate());
		//System.out.println(ud.updateActivity(new Activity("1111", "222", "1111", "2088", 0, 0)));
		
//		int[] arr=ud.vote();
//		for (int i : arr) {
//			System.out.println(i);
//		}
	}
}
