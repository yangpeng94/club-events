package com.yang.dao;

import com.yang.entity.User;

public interface AdminDao {
	 public User findAdminByStuno(int stuno) ;
	 public void updataLastLogTime(int adminno);
	 public String total() ;
}
