package com.neon.model;

public class Admin {
	
	private String adminID;
	
	private String FirstName;
	
	private String LastName;
	
	private String email;
	
	private String password;
	
	private String fileName;
	
	private String Path;
	
	

	public Admin() {
		super();
	}

	public Admin(String adminID, String firstName, String lastName, String email, String password, String fileName,
			String path) {
		super();
		this.adminID = adminID;
		FirstName = firstName;
		LastName = lastName;
		this.email = email;
		this.password = password;
		this.fileName = fileName;
		Path = path;
	}

	public String getAdminID() {
		return adminID;
	}

	public void setAdminID(String adminID) {
		this.adminID = adminID;
	}

	public String getFirstName() {
		return FirstName;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getPath() {
		return Path;
	}

	public void setPath(String path) {
		Path = path;
	}


}
