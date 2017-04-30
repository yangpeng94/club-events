package com.yang.service.imp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yang.dao.ActivityDao;
import com.yang.entity.Activity;
import com.yang.entity.Club;
import com.yang.service.ActivityService;
@Service
public class ActivityServiceImp implements ActivityService {

	@Autowired
	private ActivityDao activityDao;
	@Override
	public String InsertAct(HttpServletRequest request) {
		return activityDao.InsertAct(request);
		
	}
	@Override
	public List<Activity> findActbyClubname(String clubname,String context) {
		return activityDao.findActbyClubname(clubname,context);
	}
	@Override
	public List<Activity> findAllActivity() {
		return activityDao.findAllActivity();
	}
	@Override
	public List<Activity> findAllShenHeActivity() {
		return activityDao.findAllShenHeActivity();
	}
	@Override
	public List<Activity> findAllShenHeActivitySelect(String clubname) {
		return activityDao.findAllShenHeActivitySelect(clubname);
	}
	@Override
	public List<Activity> findAllActivitySelect(String clubname) {
		return activityDao.findAllActivitySelect(clubname);
	}
	@Override
	public Activity findActById(int id) {
		return activityDao.findActById(id);
	}
	@Override
	public void delActById(int id) {
		activityDao.delActById(id);
	}
	@Override
	public void updateActById(int id,String name,String context,String address,String time) {
		activityDao.updateActById(id,name,context, address, time);
	}
	
	@Override
	public void shenHePassActById(int id) {
		activityDao.shenHePassActById(id);
	}
}
