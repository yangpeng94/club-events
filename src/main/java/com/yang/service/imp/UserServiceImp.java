package com.yang.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yang.dao.UserDao;
import com.yang.service.UserService;

@Service
public class UserServiceImp implements UserService {
@Autowired
private UserDao userDao;

@Override
public String findNameById(int id) {
	 return userDao.findNameById(id);
}

}
