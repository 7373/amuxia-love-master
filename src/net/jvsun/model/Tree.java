package net.jvsun.model;

public class Tree {
	
	private int id;
	private int tree_level;
	private int water_value ; 
	private int sun_value;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Tree() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Tree(int id, int tree_level, int water_value, int sun_value, String only_id) {
		super();
		this.id = id;
		this.tree_level = tree_level;
		this.water_value = water_value;
		this.sun_value = sun_value;
		this.only_id = only_id;
	}
	public int getTree_level() {
		return tree_level;
	}
	public void setTree_level(int tree_level) {
		this.tree_level = tree_level;
	}
	public int getWater_value() {
		return water_value;
	}
	public void setWater_value(int water_value) {
		this.water_value = water_value;
	}
	public int getSun_value() {
		return sun_value;
	}
	public void setSun_value(int sun_value) {
		this.sun_value = sun_value;
	}
	public String getOnly_id() {
		return only_id;
	}
	public void setOnly_id(String only_id) {
		this.only_id = only_id;
	}
	private String only_id;
	
}
