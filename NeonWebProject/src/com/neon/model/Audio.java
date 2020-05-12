package com.neon.model;

public class Audio {
	
	

	private String audioID;
	
	private String userID;
	
	private String name;
	
	private String description;
	
	private String filename;
	
	private String path;
	
	public Audio() {
		super();
	}

	public Audio(String audioID, String userID, String name, String description, String filename, String path) {
		super();
		this.audioID = audioID;
		this.userID = userID;
		this.name = name;
		this.description = description;
		this.filename = filename;
		this.path = path;
	}

	public String getAudioID() {
		return audioID;
	}

	public void setAudioID(String audioID) {
		this.audioID = audioID;
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
