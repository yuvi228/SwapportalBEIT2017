package com.model;

import java.io.InputStream;

import java.sql.Blob;

public class Investor {

	public Investor() {

	}

	public Investor(Integer id, String type, String areaofinterest, String investingamount, byte[] logo,
			String address1, String address2, String street, String city, String country, String map, String fb,
			String tw, String gg) {
		this.id = id;
		this.type = type;
		this.areaofinterest = areaofinterest;
		this.investingamount = investingamount;
		this.logo = logo;
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

	private int iid;
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private String type;

	private String areaofinterest;
	private String investingamount;
	// private Blob logo;
	//
	// public Blob getLogo() {
	// return logo;
	// }
	//
	// public void setLogo(Blob logo) {
	// this.logo = logo;
	// }
	private byte[] logo;

	public byte[] getlogo() {
		return logo;
	}

	public void setlogo(byte[] logo) {
		this.logo = logo;
	}

	private String address1;
	private String address2;
	private String street;
	private String city;
	private String country;
	private String map;
	private String fb;
	private String tw;
	private String gg;

	public int getIid() {
		return iid;
	}

	public void setIid(int iid) {
		this.iid = iid;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAreaofinterest() {
		return areaofinterest;
	}

	public void setAreaofinterest(String areaofinterest) {
		this.areaofinterest = areaofinterest;
	}

	public String getInvestingamount() {
		return investingamount;
	}

	public void setInvestingamount(String investingamount) {
		this.investingamount = investingamount;
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

	public String getMap() {
		return map;
	}

	public void setMap(String map) {
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

	public void setBlob(InputStream logo2) {

	}

}
