package com.czy.bean;

/**
 * ��Ʒ
 * 
 */
public class Goods {


	private int gid;
	private String gname;
	private int number;
	private String photo;
	private String type;
	private String producer;
	private float price;
	private float carriage;
	private String pdate;
	private String paddress;
	private String described;
	
	public Goods() {

	}

	public Goods(String gname, int number, String photo, String type,
			String producer, float price, float carriage, String pdate,
			String paddress, String described) {
		this.gname = gname;
		this.number = number;
		this.photo = photo;
		this.type = type;
		this.producer = producer;
		this.price = price;
		this.carriage = carriage;
		this.pdate = pdate;
		this.paddress = paddress;
		this.described = described;
	}

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getProducer() {
		return producer;
	}

	public void setProducer(String producer) {
		this.producer = producer;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public float getCarriage() {
		return carriage;
	}

	public void setCarriage(float carriage) {
		this.carriage = carriage;
	}

	public String getPdate() {
		return pdate;
	}

	public void setPdate(String pdate) {
		this.pdate = pdate;
	}

	public String getPaddress() {
		return paddress;
	}

	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}

	public String getDescribed() {
		return described;
	}

	public void setDescribed(String described) {
		this.described = described;
	}

}
