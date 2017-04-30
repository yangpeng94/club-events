package com.yang.dao.imp;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yang.dao.ActivityDao;
import com.yang.entity.Activity;
import com.yang.entity.Club;
import com.yang.entity.User;
@Repository
public class ActivityDaoImp implements ActivityDao{
	@Autowired		
	private SessionFactory sessionFactory;
	@Autowired
	private HttpServletResponse response;
	private Session getSession()
	{
	    return sessionFactory.getCurrentSession();
	}
	@Override
	public String InsertAct(HttpServletRequest request) {
			try {
				request.setCharacterEncoding("utf-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
//		int stuno =Integer.parseInt(request.getParameter("stuno"), 10) ;
		 Club club = (Club) request.getAttribute("club");
//		 String clubname = club.getClubname();
//		 getParameter("club"); 
		 String clubname = request.getParameter("clubname");
		 String name = request.getParameter("name"); 
		 String context = request.getParameter("context"); 
		 String address = request.getParameter("address"); 
		 String img = request.getParameter("img"); 
//		 Date time = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		 Date time = null;
		try {
			 time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(request.getParameter("time"));
		} catch (ParseException e1) {
			e1.printStackTrace();
		}  
//		 Date time =   ;
//		 String address = request.getParameter("address"); 
		    String sql="INSERT INTO activity (clubname,name,context,address,img,time,releasetime,flag) VALUES (?,?,?,?,?,?,?,?)";
		    
		    Query query= getSession().createSQLQuery(sql);
		    query.setString(0, clubname);
		    query.setString(1, name);
		    query.setString(2, context);
		    query.setString(3, address);
		    query.setString(4, img);
		    query.setTimestamp(5, time);
		    query.setTimestamp(6, new Date());
		    query.setString(7, "1");
		   query.executeUpdate();
//		try {
//			response.sendRedirect("index.html");
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		   return clubname;
	}
	@Override
	public List<Activity> findActbyClubname(String clubname,String context) {
		Query query = null;
		if(context!=null){
			String hql="from Activity where clubname=? and context like ? order by releasetime desc";
			query=getSession().createQuery(hql);
			try {
				context= new String(context.getBytes("iso-8859-1"), "utf-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			query.setString(0, clubname);
			query.setString(1, "%"+context+"%");
		}else{
			String hql="from Activity where clubname=? order by releasetime desc";
			 query=getSession().createQuery(hql).setString(0, clubname);
		}
		
		List<Activity> activitys = query.list();
		return activitys; 
		
	}
	@Override
	public List<Activity> findAllActivity() {
		String hql="from Activity where flag=? ";
		Query query=getSession().createQuery(hql).setString(0, "2");
		List<Activity> Activitys = query.list(); 
		return Activitys;
	}
	@Override
	public List<Activity> findAllShenHeActivity() {
		String hql="from Activity where flag=? ";
		Query query=getSession().createQuery(hql).setString(0, "1");
		List<Activity> Activitys = query.list(); 
		return Activitys;
	}
	@Override
	public List<Activity> findAllActivitySelect(String clubname) {
		String hql="from Activity where clubname=? and flag=? order by passtime desc";
		Query query=getSession().createQuery(hql);
		query.setString(0, clubname);
		query.setString(1, "2");
		List<Activity> activitys = query.list();
		return activitys; 
	}
	@Override
	public List<Activity> findAllShenHeActivitySelect(String clubname) {
		String hql="from Activity where clubname=? and flag=? order by passtime desc";
		Query query=getSession().createQuery(hql);
		query.setString(0, clubname);
		query.setString(1, "1");
		List<Activity> activitys = query.list();
		return activitys; 
	}
	
	@Override
	public Activity findActById(int id) {
		String hql="from Activity where id=? ";
		Query query=getSession().createQuery(hql).setInteger(0, id);
		Activity activity = (Activity) query.uniqueResult();
		return activity;
	}
	@Override
	public void delActById(int id) {
		String hql="Delete FROM Activity Where id=? ";
		Query query=getSession().createQuery(hql).setInteger(0, id);
		query.executeUpdate();
	}
	@Override
	public void updateActById(int id,String name,String context,String address,String time) {
		 String sql="update activity c SET c.name=?,c.context=?,c.address=?,c.time=? where c.id=?";
		    Query query= getSession().createSQLQuery(sql);
		    
		    
		    try {
		    	name= new String(name.getBytes("iso-8859-1"), "utf-8");
				context= new String(context.getBytes("iso-8859-1"), "utf-8");
				address= new String(address.getBytes("iso-8859-1"), "utf-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    query.setString(0, name);
		    query.setString(1, context);
		    query.setString(2, address);
		    Date time1 = null;
			try {
				 time1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(time);
			} catch (ParseException e1) {
				e1.printStackTrace();
			}  
		    query.setTimestamp(3, time1);
		    query.setInteger(4, id);
		   query.executeUpdate();
	}
	@Override
	public void shenHePassActById(int id) {
		 String sql="update activity c SET c.flag=?,c.passtime=? where c.id=?";
		    Query query= getSession().createSQLQuery(sql);
		    query.setString(0, "2");
			query.setTimestamp(1, new Date());
			query.setInteger(2, id);
		   query.executeUpdate();
	}
}
