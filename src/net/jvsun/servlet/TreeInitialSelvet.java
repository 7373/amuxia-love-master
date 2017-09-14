package net.jvsun.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.malajava.util.JdbcHelper;

import net.jvsun.model.Tree;


@WebServlet("/TreeInitialSelvet")
public class TreeInitialSelvet extends HttpServlet {

	private static final long serialVersionUID = -6792879474149637639L;

@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    HttpSession session = request.getSession();
	//如果没有登录
	if (session.getAttribute("username") == null) {
	    //则跳转到登录页面
	    response.sendRedirect(request.getContextPath() + "/login.jsp");
	} else {
		String username =session.getAttribute("username").toString();
		System.out.println("%%%%%%%%"+username);
		String only_id="";
		String sql_query_user = "select only_id from tb_user where username = ? ";
		ResultSet rs = JdbcHelper.query(sql_query_user, username);
		try {
			while(rs.next())
			{
				only_id = rs.getString(1);	
			}
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Tree tree = new Tree();
		String sql_tree = "select id, tree_level , water_value , sun_value from tb_tree where only_id = ?";
		ResultSet rs_tree = JdbcHelper.query(sql_tree, only_id);
		try {
			while(rs_tree.next()){
				tree.setId(rs_tree.getInt(1));
				tree.setTree_level(rs_tree.getInt(2));
				tree.setWater_value(rs_tree.getInt(3));
				tree.setSun_value(rs_tree.getInt(4));
				tree.setOnly_id(only_id);
				session.setAttribute("tree", tree);
				response.sendRedirect(request.getContextPath() + "/tree.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}


}
