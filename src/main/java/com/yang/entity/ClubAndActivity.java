package com.yang.entity;

public class ClubAndActivity {
	private String clubname;
	private String cimg;
	private String name;
	    private String context;
	    private String address;
	    private String time;
	    private String aimg;
		public String getClubname() {
			return clubname;
		}
		public void setClubname(String clubname) {
			this.clubname = clubname;
		}
		public String getCimg() {
			return cimg;
		}
		public void setCimg(String cimg) {
			this.cimg = cimg;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
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
		public String getTime() {
			return time;
		}
		public void setTime(String time) {
			this.time = time;
		}
		public String getAimg() {
			return aimg;
		}
		public void setAimg(String aimg) {
			this.aimg = aimg;
		}
		public ClubAndActivity(String clubname, String cimg, String name, String context, String address, String time,
				String aimg) {
			super();
			this.clubname = clubname;
			this.cimg = cimg;
			this.name = name;
			this.context = context;
			this.address = address;
			this.time = time;
			this.aimg = aimg;
		}
		public ClubAndActivity(){}
}
