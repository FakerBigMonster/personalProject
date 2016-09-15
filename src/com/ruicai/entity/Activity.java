package com.ruicai.entity;

import java.util.Date;

public class Activity {

	private String title;
	private String content;
	private String address;
	private String date;
	private int countPeople;
	private int countInterest;
	private Date releaseDate;

	public Activity(String title, String content, String address, String date, int countPeople, int countInterest,
			Date releaseDate) {
		super();
		this.title = title;
		this.content = content;
		this.address = address;
		this.date = date;
		this.countPeople = countPeople;
		this.countInterest = countInterest;
		this.releaseDate = releaseDate;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
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

	public Activity(String title, String content, String address, String date, int countPeople, int countInterest) {
		super();
		this.title = title;
		this.content = content;
		this.address = address;
		this.date = date;
		this.countPeople = countPeople;
		this.countInterest = countInterest;
	}

	public Activity() {
		super();
	}

}
