package com.neon.model;

public class photos {
	
	
	private String photoID;
	
	private String userID;
	
	private String name;
	
	private String description;
	
	private String filename;
	
	private String path;
	
	public photos() {
		super();
	}
	
	
	
	
	public photos(String photoID, String userID, String name, String description, String filename, String path) {
		super();
		this.photoID = photoID;
		this.userID = userID;
		this.name = name;
		this.description = description;
		this.filename = filename;
		this.path = path;
	}




	public String getPhotoID() {
		return photoID;
	}

	public void setPhotoID(String photoID) {
		this.photoID = photoID;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
}
