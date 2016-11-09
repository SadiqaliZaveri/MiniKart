package com.minikart.daoimplementation;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.minikart.dao.TodaysMessageDAO;

import com.minikart.model.TodaysMessage;
@Repository
public class TodaysMessageDAOImplementation implements TodaysMessageDAO{
@Autowired
private SessionFactory sessionFactory;
	public void addMessage(TodaysMessage todaysMessage) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(todaysMessage);
		
	}
	@SuppressWarnings("unchecked")
	public List<TodaysMessage> listTodaysMessage() {
		List<TodaysMessage> todaysMessagelist = sessionFactory.getCurrentSession().createQuery("from TodaysMessage").getResultList();
		return todaysMessagelist;
	}
	
	@SuppressWarnings("unchecked")
	public String listTodaysMessageViaJson() {
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		List<TodaysMessage> list = sessionFactory.getCurrentSession().createQuery("from TodaysMessage").getResultList();
		String listTodaysMessage = gson.toJson(list);
		return listTodaysMessage;
	}
	
	public void deleteTodaysMessage(int messageId) {
		TodaysMessage deleteTodaysMessage = new TodaysMessage();
		deleteTodaysMessage.setMessageId(messageId);
		sessionFactory.getCurrentSession().delete(deleteTodaysMessage);
		
	}
	
	@SuppressWarnings("unchecked")
	public TodaysMessage getById(int messageId) {
		String query ="from TodaysMessage where messageId="+messageId;
		
		
		List<TodaysMessage> todaysMessageList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(todaysMessageList!=null && !todaysMessageList.isEmpty())
		{
			return todaysMessageList.get(0);	
		}else
		{
			return null;
		}
		
	}

}
