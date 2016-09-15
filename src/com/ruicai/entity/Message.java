package com.ruicai.entity;

import java.util.Date;

public class Message {

	private Date m_date;
	private String m_content;
	private String m_name;

	public Message() {
		super();
	}

	public Message(Date m_date, String m_content, String m_name) {
		super();
		this.m_date = m_date;
		this.m_content = m_content;
		this.m_name = m_name;
	}

	public Date getM_date() {
		return m_date;
	}

	public void setM_date(Date m_date) {
		this.m_date = m_date;
	}

	public String getM_content() {
		return m_content;
	}

	public void setM_content(String m_content) {
		this.m_content = m_content;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

}
