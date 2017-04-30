package com.yang.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.yang.entity.Activity;
import com.yang.entity.Club;

public interface ActivityService {
	public String InsertAct(HttpServletRequest request);
	public List<Activity> findActbyClubname(String clubname,String context);
	public List<Activity> findAllShenHeActivity();
	public List<Activity> findAllActivity();
	public List<Activity> findAllShenHeActivitySelect(String clubname);
	public List<Activity> findAllActivitySelect(String clubname);
	public Activity findActById(int id);
	public void delActById(int id);
	public void updateActById(int id,String name,String context,String address,String time);
	public void shenHePassActById(int id);
}
