package com.yang.service.imp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yang.dao.ClubDao;
import com.yang.entity.Club;
import com.yang.entity.User;
import com.yang.service.ClubService;
@Service
public class ClubSerivceImp implements ClubService{
	@Autowired
	private ClubDao clubDao;

	@Override
	public void InsertClub(HttpServletRequest request) {
		clubDao.InsertClub(request);
	}

	@Override
	public Club findClubByClubno(int clubno) {
		return clubDao.findClubByClubno(clubno);
	}
	@Override
	 public void updataReleaseTime(int clubno){
		 clubDao.updataReleaseTime(clubno);
	 }
	@Override
	 public List<Club> findAllClub(){
		return clubDao.findAllClub();
	}
	 @Override
	 public List<Club> findAllShenHeClub(){
		return clubDao.findAllShenHeClub();
	}
	 @Override
		public Club findClubById(int id) {
			return clubDao.findClubById(id);
		}
	 @Override
		public void delClubById(int id) {
			clubDao.delClubById(id);
		}
	 @Override
		public void updateClubById(int id,int clubno,String password,String clubname ,String natrue) {
			clubDao.updateClubById(id,clubno,password,clubname,natrue);
		}
	 @Override
		public void shenHePassClubById(int id) {
			clubDao.shenHePassClubById(id);
		}
		
}
