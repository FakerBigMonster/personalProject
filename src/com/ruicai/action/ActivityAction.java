package com.ruicai.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ruicai.dao.UserDao;
import com.ruicai.entity.Activity;

public class ActivityAction extends ActionSupport implements ModelDriven<Activity> {

	private Activity act = new Activity();
	private String tip;

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	public String publish() {

		UserDao ud=new UserDao();
		
		if (act.getTitle().equals("") || act.getTitle() == null || act.getContent().equals("") || act.getContent() == null
				|| act.getAddress().equals("") || act.getAddress() == null || act.getDate().equals("")
				|| act.getDate() == null) {
			setTip("发布失败！发布信息不能为空！");
			return "main";
		}
		
		if(ud.updateActivity(act).equals(act.getContent())){
			setTip("发布成功！！");
			return "main";
		}

		return "main";
	}

	@Override
	public Activity getModel() {
		// TODO Auto-generated method stub
		return act;
	}

}
