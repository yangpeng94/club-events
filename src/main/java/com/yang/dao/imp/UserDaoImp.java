package com.yang.dao.imp;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.yang.dao.UserDao;

@Repository
public class UserDaoImp implements UserDao {

@Autowired		
private SessionFactory sessionFactory;
private Session getSession()
{
    return sessionFactory.getCurrentSession();
}
@Override
public String findNameById(int id)
{
    String hql="SELECT name from User where id=?";
//    Query query=getSession().createSQLQuery(hql).setInteger(0, id);
    Query query=getSession().createQuery(hql).setInteger(0, id);
    String str= query.uniqueResult().toString();
    return str;
}

}
