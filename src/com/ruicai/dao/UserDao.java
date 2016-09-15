package com.ruicai.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.ruicai.entity.Activity;
import com.ruicai.entity.Student;
import com.ruicai.util.DButil;

public class UserDao implements com.ruicai.userDaoInterface.UserDao {

	private Connection conn;
	private PreparedStatement ppst;
	private Statement state;
	private ResultSet rs;

	@Override
	public boolean doLogin(String userName, String password) {
		boolean flag = false;
		String str = "select * from t_student where userName=? and password=?";

		conn = DButil.getConnection();
		try {
			ppst = conn.prepareStatement(str);
			ppst.setString(1, userName);
			ppst.setString(2, password);
			rs = ppst.executeQuery();
			if (rs.next()) {
				flag = true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return flag;
	}

	/**
	 * 注册学生信息
	 */
	@Override
	public boolean doValidate(Student stu) {
		boolean flag = false;
		String str = "insert into t_student(userName,password,sex,grade,QQ,weChat,tel)values(?,?,?,?,?,?,?)";
		String check = "select * from t_student where userName=?";
		conn = DButil.getConnection();
		try {
			ppst = conn.prepareStatement(str);
			ppst.setString(1, stu.getUserName());
			ppst.setString(2, stu.getPassword());
			ppst.setInt(3, stu.getSex());
			ppst.setString(4, stu.getGrade());
			ppst.setString(5, stu.getQQ());
			ppst.setString(6, stu.getWeChat());
			ppst.setString(7, stu.getTel());
			ppst.execute();

			ppst = conn.prepareStatement(check);
			ppst.setString(1, stu.getUserName());
			rs = ppst.executeQuery();
			if (rs.next()) {
				flag = true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block flag=ppst.execute();
			e.printStackTrace();
		}

		return flag;
	}

	@Override
	public boolean checkUser(String userName) {
		boolean flag = false;
		String check = "select * from t_student where userName=?";
		conn = DButil.getConnection();
		try {
			ppst = conn.prepareStatement(check);
			ppst.setString(1, userName);
			rs = ppst.executeQuery();
			if (rs.next()) {
				flag = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return flag;
	}

	@Override
	public Activity findRencentActivity() {

		conn = DButil.getConnection();
		String sql = "select * from t_activity";
		Activity act = null;
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			rs.next();
			act = new Activity(rs.getString("title"), rs.getString("content"), rs.getString("address"),
					rs.getString("date"), rs.getInt("countPeople"), rs.getInt("countInterest"),
					rs.getDate("releaseDate"));

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return act;
	}

	@Override
	public String updateActivity(Activity act) {

		String str = null;
		conn = DButil.getConnection();
		String sql = "update t_activity set title=?,content=?,address=?,date=?,releaseDate=?,countPeople=0,countInterest=0 where id=1";
		String check = "select content from t_activity where id=1";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, act.getTitle());
			ppst.setString(2, act.getContent());
			ppst.setString(3, act.getAddress());
			ppst.setString(4, act.getDate());
			ppst.setDate(5, new java.sql.Date(new Date().getTime()));
			ppst.execute();

			ppst = conn.prepareStatement(check);
			rs = ppst.executeQuery();
			rs.next();
			str = rs.getString("content");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return str;
	}

	@Override
	public int[] vote() {
		int[] arr = new int[2];
		String sql = "select * from t_activity where id=1";
		String update = "update t_activity set countInterest=?,countPeople=?  where id=1";
		conn = DButil.getConnection();
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			rs.next();
			arr[0] = rs.getInt("countInterest")+1;// ding
			arr[1] = rs.getInt("countPeople") - rs.getInt("countInterest")+1;// cai
			int countPeople = rs.getInt("countPeople")+1;

			ppst = conn.prepareStatement(update);
			ppst.setInt(1, arr[0]);
			ppst.setInt(2, countPeople);
			ppst.execute();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arr;
	}

}
