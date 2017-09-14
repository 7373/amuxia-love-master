package net.jvsun.tools;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import net.jvsun.model.User;
/**
 * 数据库连接类
 */
public class Conn {
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    public Conn(){
	try {
	    Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
	    e.printStackTrace();
	}
    }
    
    public ResultSet executeQuery(String sql) {
	try {
	    conn = DriverManager.getConnection(
		    "jdbc:mysql://localhost:3306/yuanju?useUnicode=true&characterEncoding=utf-8", "root", "1011");
	    stmt = conn.createStatement();
	    rs = stmt.executeQuery(sql);
	    
	} catch (SQLException e) {
	    e.printStackTrace();
	}
	return rs;
    }
    
    public int executeUpdate(String sql) {
	int result = 0;
	try {
	    conn = DriverManager.getConnection(
		    "jdbc:mysql://localhost:3306/yuanju?useUnicode=true&characterEncoding=utf-8", "root", "1011");
	    stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
	    result = stmt.executeUpdate(sql);
	} catch (SQLException e) {
	    result = 0;
	}
	return result;
    }
    
   
    public void close() {
	if (rs != null)
	    try {
		rs.close();
	    } catch (SQLException e) {
		e.printStackTrace();
	    }
	
	if (stmt != null)
	    try {
		stmt.close();
	    } catch (SQLException e) {
		e.printStackTrace();
	    }
	
	if (conn != null)
	    try {
		conn.close();
	    } catch (SQLException e) {
		e.printStackTrace();
	    }
    }
    

}
