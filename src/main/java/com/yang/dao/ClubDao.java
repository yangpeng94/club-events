package com.yang.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.yang.entity.Club;

public interface ClubDao {
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
