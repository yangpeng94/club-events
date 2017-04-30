package com.yang.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yang.dao.AdminDao;
import com.yang.entity.User;
import com.yang.service.AdminService;
@Service
public class AdminServiceImp implements AdminService{
@Autowired
	private AdminDao adminDao;
	@Override
	public User findAdminByStuno(int stuno) {
		return  adminDao.findAdminByStuno(stuno);
	}
	@Override
	public void updataLastLogTime(int adminno) {
		adminDao.updataLastLogTime(adminno);

	}
	@Override
	public String total() {
		return adminDao.total();
	}

}
