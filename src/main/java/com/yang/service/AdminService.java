package com.yang.service;

import com.yang.entity.User;

public interface AdminService {
	public User findAdminByStuno(int stuno) ;
	public void updataLastLogTime(int adminno);
	public String total();
}
