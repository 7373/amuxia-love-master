package net.jvsun.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.malajava.util.JdbcHelper;

import net.jvsun.model.Image;
import net.jvsun.tools.Utilty;

@WebServlet("/ShowOrNotServlet")
public class ShowOrNotServlet extends HttpServlet {

	private static final long serialVersionUID = -4015900591505191665L;
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		//如果没有登录
		if (session.getAttribute("username") == null) {
		    //则跳转到登录页面
		    response.sendRedirect(request.getContextPath() + "/login.jsp");
		} else {
		String myUsername =session.getAttribute("username").toString();
		String myPalName = "";
		String myPalOnlyId = "";
		int sex = 0;
		String sql_myPalOnlyId = "select only_id ,sex from tb_user where username = ? ";
		ResultSet rs_myPalOnlyId = JdbcHelper.query(sql_myPalOnlyId, myUsername);
		try {
			while(rs_myPalOnlyId.next()){
				myPalOnlyId = rs_myPalOnlyId.getString(1);
				sex = rs_myPalOnlyId.getInt(2);
			}
			rs_myPalOnlyId.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(myPalOnlyId);
		
		
		String sql_myParName = "select username from tb_user where sex !="+sex+" and only_id = ?";
		ResultSet rs_myParName = JdbcHelper.query(sql_myParName, myPalOnlyId);
		try {
			while(rs_myParName.next()){
				myPalName = rs_myParName.getString(1);
			}
			rs_myParName.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql = "select id , up_username , up_time , image_path , image_name , des_image , isShow from tb_image where up_username = ? or up_username = ?";
		ResultSet rs = JdbcHelper.query(sql, myUsername,myPalName);
		List<Image> myPictureList = new ArrayList();
		try {
			while(rs.next()){
				Image image = new Image();
				image.setId(rs.getInt(1));
				image.setUp_username(myUsername);
				image.setUp_time(rs.getTimestamp(3));
				image.setImg_path(rs.getString(4));
				image.setImg_name(rs.getString(5));
				image.setDes_image(rs.getString(6));
				image.setIsShow(rs.getInt(7));
				myPictureList.add(image);
			}
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			session.setAttribute("myPictureList", myPictureList); 
			response.sendRedirect(request.getContextPath()+"/searchPicture.jsp");
			
		}	
			
	
	
	}
}
