package com.yang.dao.imp;

import java.math.BigInteger;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yang.dao.AdminDao;
import com.yang.entity.User;
@Repository
public class AdminDaoImp implements AdminDao{
	@Autowired		
	private SessionFactory sessionFactory;
	@Autowired
	private HttpServletResponse response;
	private Session getSession()
	{
	    return sessionFactory.getCurrentSession();
	}
	@Override
	public User findAdminByStuno(int stuno) {
		String hql="from User where stuno=? ";
		Query query=getSession().createQuery(hql).setInteger(0, stuno);
	    User admin = (User) query.uniqueResult();
		return admin;
	}
	public void updataLastLogTime(int adminno){
	    String sql="update user u SET u.lastlogtime=? where u.stuno=?";
	    Query query= getSession().createSQLQuery(sql);
	    query.setTimestamp(0, new Date());
	    query.setInteger(1, adminno);
	   query.executeUpdate();
	}
	@Override
	public String total() {
		String stulensql="select count(*) from user";
		String clublensql="select count(*) from club where flag=?";
		String clubshenhesql="select count(*) from club where flag=?";
		String activitylensql="select count(*) from activity where flag=?";
		String activityshenhesql="select count(*) from activity where flag=?";
		Query querystulen= getSession().createSQLQuery(stulensql);
		Query queryclublen= getSession().createSQLQuery(clublensql);
		Query queryclubshenhe= getSession().createSQLQuery(clubshenhesql);
		Query queryactivitylen= getSession().createSQLQuery(activitylensql);
		Query queryactivityshenhe= getSession().createSQLQuery(activityshenhesql);
		queryclublen.setString(0, "2");
		queryclubshenhe.setString(0, "1");
		queryactivitylen.setString(0, "2");
		queryactivityshenhe.setString(0, "1");
		BigInteger stulen =  (BigInteger) querystulen.uniqueResult();
		BigInteger clublen = (BigInteger) queryclublen.uniqueResult();
		BigInteger clubshenhe = (BigInteger) queryclubshenhe.uniqueResult();
		BigInteger activitylen = (BigInteger) queryactivitylen.uniqueResult();
		BigInteger activityshenhe = (BigInteger) queryactivityshenhe.uniqueResult();
		String total = stulen+","+clublen+","+clubshenhe+","+activitylen+","+activityshenhe;
		return total;
	}
}
