package com.minikart.dao;

import java.util.List;

import com.minikart.model.TodaysMessage;

public interface TodaysMessageDAO {

	public void addMessage(TodaysMessage todaysMessage);
	public List<TodaysMessage> listTodaysMessage();
	public String listTodaysMessageViaJson();
	public void deleteTodaysMessage(int messageId);
	public TodaysMessage getById(int messageId);
}
