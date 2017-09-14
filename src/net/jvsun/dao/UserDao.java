package net.jvsun.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.malajava.util.JdbcHelper;

import net.jvsun.model.User;
import net.jvsun.tools.Conn;
import net.jvsun.tools.Utilty;

public class UserDao {
	Conn conn=new Conn();
	/**
	 *判断登陆用户是否合法
	 */
	public boolean isExist(String username,String password)throws SQLException{
		boolean result=false;
		User user=new User();
		System.out.println("username:" + username);
		String sql="select * from tb_user a where username='"+username+"'and password='"+password+"'";
		ResultSet rs=conn.executeQuery(sql);
		if(rs.next()){
			user.setRealname(rs.getString("realname"));
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
			user.setSex(rs.getInt("sex"));
			user.setPid(rs.getInt("pid"));
			user.setEmail(rs.getString("email"));
			user.setTel(rs.getInt("tel"));
			user.setOnly_id(rs.getString("only_id"));
			user.setOur_time(rs.getString("our_time"));
			
			result=true;
		}
		conn.close();
		return result;
	}
	/**
	 * 当前注册用户是否存在
	 */
	public boolean isExistUser(String username)throws SQLException{
		boolean result=false;
		User user=new User();
		String sql="select * from tb_user where username='"+username+"'";
		ResultSet rs=conn.executeQuery(sql);
		if(rs.next()){
			user.setUsername(rs.getString("username"));
			result=true;
		}
		conn.close();
		return result;
	}
	/**
	 *用户注册
	 */
	public int insert(User user)throws SQLException{
		
		String sql_check = "select * from tb_user where sex = ? and only_id = ?";
		ResultSet rs = JdbcHelper.query(sql_check,user.getSex(),user.getOnly_id());
		if(rs.next()){
			return 1;
		}else{
			String sql="insert into tb_user(realname,username,password,sex,pid,email,tel,only_id,our_time,now_time) values";
			sql=sql+"('"+user.getRealname()+"','"+user.getUsername()+"','"+Utilty.MD5(user.getPassword())+"',"
				+ "'"+user.getSex()+"','"+user.getPid()+"','"+user.getEmail()+"','"+user.getTel()+"'"
						+ ",'"+user.getOnly_id()+"','"+user.getOur_time()+"',now())";
			int result=conn.executeUpdate(sql);
			if(user.getSex() == 0){
				
				String sql_insert_tree = "INSERT INTO tb_tree(tree_level , water_value , sun_value , only_id , product_time) VALUES(?,?,?,?,?)";
				result = JdbcHelper.insert(sql_insert_tree, true, 0,0,0,user.getOnly_id(),new Date(new java.util.Date().getTime()));
			}
			System.out.println(user.toString());
			
			conn.close();
			return 0;
		}		
	}
}
