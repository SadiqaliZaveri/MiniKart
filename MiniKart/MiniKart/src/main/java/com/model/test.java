package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class test {
@Id
private String Username;

public String getUsername() {
	return Username;
}

public void setUsername(String username) {
	Username = username;
}

}
