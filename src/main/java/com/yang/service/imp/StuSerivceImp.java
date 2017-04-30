package com.yang.service.imp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yang.dao.StuDao;
import com.yang.entity.ClubAndActivity;
import com.yang.entity.User;
import com.yang.service.StuService;

@Service
public class StuSerivceImp implements StuService{
@Autowired
private StuDao stuDao;

@Override
public void InsertStu(HttpServletRequest request) {
	 stuDao.InsertStu(request);
}

@Override
public User findStuByStuno(int stuno) {
	return stuDao.findStuByStuno(stuno);
}

@Override
public List<User> findAllStu() {
	return stuDao.findAllStu();
}

@Override
public void updataLastLogTime(int stuno) {
	stuDao.updataLastLogTime(stuno);
}

@Override
public List<ClubAndActivity> stuFindAllActivity(String stuflag,String context) {
	return stuDao.stuFindAllActivity(stuflag,context);
}

@Override
public User findStuById(int id) {
	return stuDao.findStuById(id);
}

@Override
public void delStuById(int id) {
	stuDao.delStuById(id);
}

@Override
public void updateStuById(int id, int stuno, String password, String name) {
	stuDao.updateStuById(id,stuno, password, name);
}
}