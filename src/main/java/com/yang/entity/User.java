package com.yang.entity;

public class User
{
    private int id;
    private int stuno;
    private String password;
    private String name;
    private String img;
    private String regtime;
    private String lastlogtime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStuno() {
		return stuno;
	}
	public void setStuno(int stuno) {
		this.stuno = stuno;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getRegtime() {
		return regtime;
	}
	public void setRegtime(String regtime) {
		this.regtime = regtime;
	}
	public String getLastlogtime() {
		return lastlogtime;
	}
	public void setLastlogtime(String lastlogtime) {
		this.lastlogtime = lastlogtime;
	}
	public User(int id, int stuno, String password, String name, String img, String regtime, String lastlogtime) {
		super();
		this.id = id;
		this.stuno = stuno;
		this.password = password;
		this.name = name;
		this.img = img;
		this.regtime = regtime;
		this.lastlogtime = lastlogtime;
	}
	public User() {
		super();
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", stuno=" + stuno + ", password=" + password + ", name=" + name + ", img=" + img
				+ ", regtime=" + regtime + ", lastlogtime=" + lastlogtime + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + ((img == null) ? 0 : img.hashCode());
		result = prime * result + ((lastlogtime == null) ? 0 : lastlogtime.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((regtime == null) ? 0 : regtime.hashCode());
		result = prime * result + stuno;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (id != other.id)
			return false;
		if (img == null) {
			if (other.img != null)
				return false;
		} else if (!img.equals(other.img))
			return false;
		if (lastlogtime == null) {
			if (other.lastlogtime != null)
				return false;
		} else if (!lastlogtime.equals(other.lastlogtime))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (regtime == null) {
			if (other.regtime != null)
				return false;
		} else if (!regtime.equals(other.regtime))
			return false;
		if (stuno != other.stuno)
			return false;
		return true;
	}
	

  
 
}
