package com.model;

import java.sql.Blob;

public class Ideaperson {

	public Ideaperson() {

	}

	public Ideaperson(Integer id, String type, String aboutyou, String expectfund, String projectabstract,
			String address1, String address2, String street, String city, String country, String map, String fb,
			String tw, String gg) {
		this.id = id;
		this.type = type;
		// this.photo = photo;
		this.aboutyou = aboutyou;
		this.expectfund = expectfund;
		this.projectabstract = projectabstract;
		this.address1 = address1;
		this.address2 = address2;
		this.street = street;
		this.city = city;
		this.country = country;
		this.map = map;
		this.fb = fb;
		this.tw = tw;
		this.gg = gg;
	}

	public Ideaperson(Integer ipid, Integer id, String type, String aboutyou, String expectfund, String projectabstract,
			String address1, String address2, String street, String city, String country, String fb, String tw,
			String gg) {
		this.ipid = ipid;
		this.id = id;
		this.type = type;
		this.aboutyou = aboutyou;
		this.expectfund = expectfund;
		this.projectabstract = projectabstract;
		this.address1 = address1;
		this.address2 = address2;
		this.street = street;
		this.city = city;
		this.country = country;
		this.fb = fb;
		this.tw = tw;
		this.gg = gg;
	}

	private int ipid;
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private String type;

	private byte[] photo;

	public byte[] getphoto() {
		return photo;
	}

	public void setphoto(byte[] photo) {
		this.photo = photo;
	}

	private String aboutyou;
	private String expectfund;
	private String projectabstract;
	private String address1;
	private String address2;
	private String street;
	private String city;
	private String country;
	private String map;
	private String fb;
	private String tw;
	private String gg;

	public int getIpid() {
		return ipid;
	}

	public void setIpid(int ipid) {
		this.ipid = ipid;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAboutyou() {
		return aboutyou;
	}

	public void setAboutyou(String aboutyou) {
		this.aboutyou = aboutyou;
	}

	public String getProjectabstract() {
		return projectabstract;
	}

	public void setProjectabstract(String projectabstract) {
		this.projectabstract = projectabstract;
	}

	public String getExpectfund() {
		return expectfund;
	}

	public void setExpectfund(String expectfund) {
		this.expectfund = expectfund;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getmap() {
		return map;
	}

	public void setmap(String map) {
		this.map = map;
	}

	public String getFb() {
		return fb;
	}

	public void setFb(String fb) {
		this.fb = fb;
	}

	public String getTw() {
		return tw;
	}

	public void setTw(String tw) {
		this.tw = tw;
	}

	public String getGg() {
		return gg;
	}

	public void setGg(String gg) {
		this.gg = gg;
	}

}
