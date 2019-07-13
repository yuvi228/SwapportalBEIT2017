package com.model;



public class Post {
private int pid;
private int id;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
private String definition;
private String title;
private String keyword;
private String abstrct;
private String description;
private String category;
private String status;
private String startdate;
public Post(){
	
}
public Post(Integer id,String definition, String title, String keyword,String abstrct, String descrition,String category,String status,String startdate){

	this.id=id;
	this.definition=definition;
	this.title=title;
	this.keyword=keyword;
	this.abstrct=abstrct;
	this.description=descrition;
	this.category=category;
	this.status=status;
	this.startdate=startdate;
}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
public String getDefinition() {
	return definition;
}
public void setDefinition(String definition) {
	this.definition = definition;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getKeyword() {
	return keyword;
}
public void setKeyword(String keyword) {
	this.keyword = keyword;
}
public String getAbstrct() {
	return abstrct;
}
public void setAbstrct(String abstrct) {
	this.abstrct = abstrct;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getStartdate() {
	return startdate;
}
public void setStartdate(String startdate) {
	this.startdate = startdate;
}

}
