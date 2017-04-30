package com.yang.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.yang.entity.ClubAndActivity;
import com.yang.entity.User;

public interface StuDao {
  public void InsertStu(HttpServletRequest request);
  public User findStuByStuno(int stuno) ;
  public List<User> findAllStu();
  public void updataLastLogTime(int stuno);
  public List<ClubAndActivity> stuFindAllActivity(String stuflag,String context);
  public User findStuById(int id);
  public void delStuById(int id);
  public void updateStuById(int id ,int stuno,String password,String name);
}
