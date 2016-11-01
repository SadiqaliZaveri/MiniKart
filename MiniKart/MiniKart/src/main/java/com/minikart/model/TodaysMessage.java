package com.minikart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.google.gson.annotations.Expose;

@Entity
public class TodaysMessage {
@Id
@Expose
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int messageId;
@Expose
private String message;

public String getMessage() {
	return message;
}

public void setMessage(String message) {
	this.message = message;
}

public int getMessageId() {
	return messageId;
}

public void setMessageId(int messageId) {
	this.messageId = messageId;
}
}
