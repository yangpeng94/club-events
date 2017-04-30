package com.yang.entity;

public class Activity {
	private int id;
    private String name;
    private String clubname;
    private String img;
    private String context;
    private String address;
    private String releasetime;
    private String passtime;
    private String flag;
    private String time;
    private String love;
    
	public String getLove() {
		return love;
	}
	public void setLove(String love) {
		this.love = love;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClubname() {
		return clubname;
	}
	public void setClubname(String clubname) {
		this.clubname = clubname;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getReleasetime() {
		return releasetime;
	}
	public void setReleasetime(String releasetime) {
		this.releasetime = releasetime;
	}
	public String getPasstime() {
		return passtime;
	}
	public void setPasstime(String passtime) {
		this.passtime = passtime;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Activity(int id, String name, String clubname, String img, String context, String address,
			String releasetime, String passtime, String flag, String time, String love) {
		super();
		this.id = id;
		this.name = name;
		this.clubname = clubname;
		this.img = img;
		this.context = context;
		this.address = address;
		this.releasetime = releasetime;
		this.passtime = passtime;
		this.flag = flag;
		this.time = time;
		this.love = love;
	}
	public Activity() {
		super();
	}
	
    
}
