package net.jvsun.model;
import java.util.Date;
public class User {
    private int id;
    private String realname;//真实姓名
    private String username;
    private String password;
    private int sex;
    private int pid;//身份证号码
    private String email;
    private int tel;
    private String only_id;//专属码
    private String our_time;//纪念日
    private Date now_time;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getRealname() {
        return realname;
    }
    public void setRealname(String realname) {
        this.realname = realname;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public int getSex() {
        return sex;
    }
    public void setSex(int sex) {
        this.sex = sex;
    }
    public int getPid() {
        return pid;
    }
    public void setPid(int pid) {
        this.pid = pid;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public int getTel() {
        return tel;
    }
    public void setTel(int tel) {
        this.tel = tel;
    }
    public String getOnly_id() {
        return only_id;
    }
    public void setOnly_id(String only_id) {
        this.only_id = only_id;
    }
    public String getOur_time() {
        return our_time;
    }
    public void setOur_time(String our_time) {
        this.our_time = our_time;
    }
    public Date getNow_time() {
        return now_time;
    }
    public void setNow_time(Date now_time) {
        this.now_time = now_time;
    }
    public User(int id, String realname, String username, String password, int sex, int pid, String email, int tel,
	    String only_id, String our_time, Date now_time) {
	super();
	this.id = id;
	this.realname = realname;
	this.username = username;
	this.password = password;
	this.sex = sex;
	this.pid = pid;
	this.email = email;
	this.tel = tel;
	this.only_id = only_id;
	this.our_time = our_time;
	this.now_time = now_time;
    }
    public User() {
	super();
	// TODO Auto-generated constructor stub
    }
    @Override
    public String toString() {
	return "User [id=" + id + ", realname=" + realname + ", username=" + username + ", password=" + password
		+ ", sex=" + sex + ", pid=" + pid + ", email=" + email + ", tel=" + tel + ", only_id=" + only_id
		+ ", our_time=" + our_time + ", now_time=" + now_time + "]";
    }
    

}
