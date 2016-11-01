package com.minikart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.minikart.daoimplementation.TodaysMessageDAOImplementation;
import com.minikart.model.TodaysMessage;

@Service
public class TodaysMessageService {
@Autowired
private TodaysMessageDAOImplementation todaysMessageDAOImplementation;
@Transactional
public void addMessage(TodaysMessage todaysMessage)
{
	todaysMessageDAOImplementation.addMessage(todaysMessage);
}
@Transactional
public List<TodaysMessage> listTodaysMessage() {
	return todaysMessageDAOImplementation.listTodaysMessage();
}
@Transactional
public String listTodaysMessageViaJson() {
	return todaysMessageDAOImplementation.listTodaysMessageViaJson();	
}
@Transactional
public void deleteTodaysMessage(int messageId) {
	todaysMessageDAOImplementation.deleteTodaysMessage(messageId);
}
@Transactional
public TodaysMessage getById(int messageId) {
	return todaysMessageDAOImplementation.getById(messageId);
}
}
