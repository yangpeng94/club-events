package com.yang.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yang.entity.Club;
import com.yang.entity.User;

public interface ClubService {
	public void InsertClub(HttpServletRequest request);
	 public Club findClubByClubno(int clubno) ;
	 public void updataReleaseTime(int clubno);
	 public List<Club> findAllClub();
	 public List<Club> findAllShenHeClub();
	 public Club findClubById(int id);
	  public void delClubById(int id);
	  public void updateClubById(int id,int clubno,String password,String clubname ,String natrue);
	  public void shenHePassClubById(int id);
}
