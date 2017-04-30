package com.yang.dao.imp;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yang.dao.ClubDao;
import com.yang.entity.Club;
import com.yang.entity.User;

@Repository
public class ClubDaoImp implements ClubDao {
	@Autowired
	private HttpServletResponse response;
	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void InsertClub(HttpServletRequest request) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		int clubno = Integer.parseInt(request.getParameter("clubno"), 10);
		String password = request.getParameter("cpassword");
		String clubname = request.getParameter("clubname");
		String img = request.getParameter("img");
		String natrue = request.getParameter("natrue");
		String sql = "INSERT INTO club (img,clubno,password,clubname,regtime,releasetime,flag,natrue) VALUES (?,?,?,?,?,?,?,?)";
		Query query = getSession().createSQLQuery(sql);
		query.setString(0, img);
		query.setInteger(1, clubno);
		query.setString(2, password);
		query.setString(3, clubname);
		query.setTimestamp(4, new Date());
		query.setTimestamp(5, new Date());
		query.setString(6, "1");
		query.setString(7, natrue);
		query.executeUpdate();
		try {
			response.sendRedirect("index.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Club findClubByClubno(int clubno) {
		String hql = "from Club where clubno=? ";
		Query query = getSession().createQuery(hql).setInteger(0, clubno);
		Club club = (Club) query.uniqueResult();
		return club;
	}

	@Override
	public void updataReleaseTime(int clubno) {
		String sql = "update club c SET c.releasetime=? where c.clubno=?";
		Query query = getSession().createSQLQuery(sql);
		query.setTimestamp(0, new Date());
		query.setInteger(1, clubno);
		query.executeUpdate();
	}

	@Override
	public List<Club> findAllClub() {
		String hql = "from Club where flag=? ";
		Query query = getSession().createQuery(hql).setInteger(0, 2);
		List<Club> clubs = query.list();
		// for(User user : users){
		// System.out.println(user.getStuno() + " : " +user.getName() + " : " +
		// user.getLastlogtime());
		// }
		return clubs;
	}

	@Override
	public List<Club> findAllShenHeClub() {
		String hql = "from Club where flag=? ";
		Query query = getSession().createQuery(hql).setInteger(0, 1);
		List<Club> clubs = query.list();
		// for(User user : users){
		// System.out.println(user.getStuno() + " : " +user.getName() + " : " +
		// user.getLastlogtime());
		// }
		return clubs;
	}

	@Override
	public Club findClubById(int id) {
		String hql = "from Club where id=? ";
		Query query = getSession().createQuery(hql).setInteger(0, id);
		Club club = (Club) query.uniqueResult();
		return club;
	}

	@Override
	public void delClubById(int id) {
		String hql = "Delete FROM Club Where id=? ";
		Query query = getSession().createQuery(hql).setInteger(0, id);
		query.executeUpdate();
	}

	@Override
	public void updateClubById(int id, int clubno, String password, String clubname, String natrue) {
		String sql = "update club c SET c.clubno=?,c.password=?,c.clubname=?,c.natrue=? where c.id=?";
		Query query = getSession().createSQLQuery(sql);
		  try {
			  clubname= new String(clubname.getBytes("iso-8859-1"), "utf-8");
			  natrue= new String(natrue.getBytes("iso-8859-1"), "utf-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		query.setInteger(0, clubno);
		query.setString(1, password);
		query.setString(2, clubname);
		query.setString(3, natrue);
		query.setInteger(4, id);
		query.executeUpdate();
	}

	@Override
	public void shenHePassClubById(int id) {
		String sql = "update club c SET c.flag=?,c.passtime=? where c.id=?";
		Query query = getSession().createSQLQuery(sql);

		query.setString(0, "2");
		query.setTimestamp(1, new Date());
		query.setInteger(2, id);
		query.executeUpdate();
	}

}
