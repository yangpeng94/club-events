package com.yang.dao.imp;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yang.dao.StuDao;
import com.yang.entity.Activity;
import com.yang.entity.Club;
import com.yang.entity.ClubAndActivity;
import com.yang.entity.User;
@Repository
public class StuDaoImp implements StuDao {
	@Autowired		
	private SessionFactory sessionFactory;
	@Autowired
	private HttpServletResponse response;
	private Session getSession()
	{
	    return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void InsertStu(HttpServletRequest request) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		int stuno =Integer.parseInt(request.getParameter("stuno"), 10) ;
		 String password = request.getParameter("password"); 
		 String name = request.getParameter("name"); 
		 String img = request.getParameter("img"); 
		    String sql="INSERT INTO user (img,stuno,password,name,regtime,lastlogtime) VALUES (?,?,?,?,?,?)";
		    
		    Query query= getSession().createSQLQuery(sql);
		    query.setString(0, img);
		    query.setInteger(1, stuno);
		    query.setString(2, password);
		    query.setString(3, name);
		    query.setTimestamp(4, new Date());
		    query.setTimestamp(5, new Date());
		   query.executeUpdate();
		try {
			response.sendRedirect("index.html");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
//	List<Users> users = query.list();    
//    for(Users user : users){    
//        System.out.println(user.getName() + " : " + user.getPasswd() + " : " + user.getId());    
//    }    
	@Override
	public User findStuByStuno(int stuno) {
		String hql="from User where stuno=? ";
		Query query=getSession().createQuery(hql).setInteger(0, stuno);
	    User user =  (User) query.uniqueResult();
	    if(user!=null){
	    	 int id = user.getId();
	 	    if(id!=1){
	 	    	
	 	    }else{
	 	        user=null;
	 	    }
	    }
		return user;
	}

	@Override
	public List<User> findAllStu() {
		String hql="from User where id!=? ";
		Query query=getSession().createQuery(hql).setInteger(0, 1);
		List<User> users = query.list(); 
//	    for(User user : users){    
//      System.out.println(user.getStuno() + " : " +user.getName() + " : " +  user.getLastlogtime());    
//            }   
		return users;
	}
	public void updataLastLogTime(int stuno){
		    String sql="update user u SET u.lastlogtime=? where u.stuno=?";
		    
		    Query query= getSession().createSQLQuery(sql);
		    query.setTimestamp(0, new Date());
		    query.setInteger(1, stuno);
		   query.executeUpdate();
	}

	@Override
	public List<ClubAndActivity> stuFindAllActivity(String stuflag,String context) {	
		Query query = null ;
		StringBuffer hql=new StringBuffer();
		hql.append("select c.clubname  as cclubname,c.img as cimg,name,context,address,time,a.img as aimg ");
        hql.append("from club c,activity a where c.clubname = a.clubname and c.flag=? and a.flag =? ");
        hql.append(" and TO_DAYS(NOW())< TO_DAYS(a.time) ");
		        if(stuflag.equals("1")){
		        	hql.append(" and TO_DAYS(NOW())> TO_DAYS(a.passtime) order by a.passtime desc");
		        }else if(stuflag.equals("2")){
		        	hql.append(" order by a.time");
		        }else if(stuflag.equals("3")){
		        	hql.append("and c.clubname like ");
		        	hql.append("?");
		        	hql.append("  order by a.time");
//		        	hql.append(" and cclubname  like _?_  order by a.time");
		        }else if(stuflag.equals("4")){
		        	hql.append("and context like ");
		        	hql.append("?");
		        	hql.append("  order by a.time");
//		        	hql.append(" and context  like _?_ order by a.time");
		        }
 
		query=getSession().createSQLQuery(hql.toString());
		query.setString(0, "2");
		query.setString(1, "2");
		if(context!=null && context!=""){
			try {
				context= new String(context.getBytes("iso-8859-1"), "utf-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			query.setString(2, ("%"+context+"%"));
		}
		
		List<Object[]> objects = query.list();
		
//		System.out.println((objects.get(0))[0]);
		List<ClubAndActivity> listClubAndActivity =  new ArrayList<ClubAndActivity>();;
		if(objects!=null){
		for(int i=0; i<objects.size(); i++){  
			 Object[] obs=objects.get(i);  
			 ClubAndActivity clubAndActivity = new ClubAndActivity();  
			 clubAndActivity.setClubname((String) obs[0]);  
			 clubAndActivity.setCimg((String) obs[1]);
			 clubAndActivity.setName((String) obs[2]);
			 clubAndActivity.setContext((String) obs[3]);
			 clubAndActivity.setAddress((String) obs[4]); 
//			 Date time = null;
//				try {
//					 time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse((String) obs[5]);
//				} catch (ParseException e1) {
//					e1.printStackTrace();
//				}  
			 
			 String tsStr = "";   
		        DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");   
		        try {   
		            //方法一   
		            tsStr = sdf.format(obs[5]);   
		            System.out.println(tsStr);      
		        } catch (Exception e) {   
		            e.printStackTrace();   
		        }  
			 clubAndActivity.setTime(tsStr);
			 clubAndActivity.setAimg((String) obs[6]);
			 listClubAndActivity.add(clubAndActivity);
			}
		}
		return listClubAndActivity;
	}
	@Override 
	public User findStuById(int id) {
		String hql="from User where id=? ";
		Query query=getSession().createQuery(hql).setInteger(0, id);
	    User user =  (User) query.uniqueResult();
		return user;
	}
	@Override 
	  public void delStuById(int id){
		
		String hql="Delete FROM User Where id=? ";
		Query query=getSession().createQuery(hql).setInteger(0, id);
		query.executeUpdate();
	}
	@Override 
	  public void updateStuById(int id ,int stuno,String password,String name){
		String hql="update User user set user.stuno=?,user.password=?,user.name=? where user.id=? ";
		Query query=getSession().createQuery(hql);
		query.setInteger(0, stuno);
		query.setString(1, password);
		query.setString(2, name);
		query.setInteger(3, id);
		query.executeUpdate();
	}
}
