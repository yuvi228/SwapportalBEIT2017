package com.model;

public class Feedback {

	private int fid;
private int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	private String name;
	private String comments;
	
	
	public Feedback(){
		
	}
	
	public Feedback(Integer id,String name,String comments){
		
		this.id=id;
		this.name=name;
		this.comments=comments;
	}
	
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
}
