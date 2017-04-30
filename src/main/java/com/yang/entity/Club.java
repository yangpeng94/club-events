package com.yang.entity;

public class Club {
	    private int id;
	    private int clubno;
	    private String password;
	    private String clubname;
	    private String img;
	    private String natrue;
	    private String regtime;
	    private String releasetime;
	    private String passtime;
	    private String flag;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public int getClubno() {
			return clubno;
		}
		public void setClubno(int clubno) {
			this.clubno = clubno;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
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
		public String getNatrue() {
			return natrue;
		}
		public void setNatrue(String natrue) {
			this.natrue = natrue;
		}
		public String getRegtime() {
			return regtime;
		}
		public void setRegtime(String regtime) {
			this.regtime = regtime;
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
		public Club(int id, int clubno, String password, String clubname, String img, String natrue, String regtime,
				String releasetime, String passtime, String flag) {
			super();
			this.id = id;
			this.clubno = clubno;
			this.password = password;
			this.clubname = clubname;
			this.img = img;
			this.natrue = natrue;
			this.regtime = regtime;
			this.releasetime = releasetime;
			this.passtime = passtime;
			this.flag = flag;
		}
		public Club() {
			super();
		}
	    
}
