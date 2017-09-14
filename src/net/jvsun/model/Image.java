package net.jvsun.model;

import java.util.Date;



public class Image {
	private int id;
	private String up_username;
	private Date up_time;
	private String img_path;
	private String img_name;
	private String des_image;
	private int isShow;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getUp_time() {
		return up_time;
	}
	public void setUp_time(Date up_time) {
		this.up_time = up_time;
	}
	public String getImg_path() {
		return img_path;
	}
	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}
	public String getImg_name() {
		return img_name;
	}
	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}
	public String getDes_image() {
		return des_image;
	}
	public void setDes_image(String des_image) {
		this.des_image = des_image;
	}
	public int getIsShow() {
		return isShow;
	}
	public void setIsShow(int isShow) {
		this.isShow = isShow;
	}
	public Image(int id, String up_username, Date up_time, String img_path,
			String img_name, String des_image, int isShow) {
		super();
		this.id = id;
		this.setUp_username(up_username);
		this.up_time = up_time;
		this.img_path = img_path;
		this.img_name = img_name;
		this.des_image = des_image;
		this.isShow = isShow;
	}
	public Image() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getUp_username() {
		return up_username;
	}
	public void setUp_username(String up_username) {
		this.up_username = up_username;
	}
	
}
