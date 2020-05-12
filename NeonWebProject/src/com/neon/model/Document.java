package com.neon.model;

public class Document {

	private String docId;
	private String userID;
	private String name;
	private String description;
	private String filename;
	private String path;
	
	public Document() {
		super();
	}

	public String getDocId() {
		return docId;
	}

	public void setDocId(String docId) {
		this.docId = docId;
	}

	public String getUserId() {
		return userID;
	}

	public void setUserId(String userId) {
		this.userID = userId;
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

	public Document(String docId, String userId, String name, String description, String filename, String path) {
		super();
		this.docId = docId;
		this.userID = userId;
		this.name = name;
		this.description = description;
		this.filename = filename;
		this.path = path;
	}
}
