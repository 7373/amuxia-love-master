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

import net.jvsun.model.User;


@WebServlet("/TreeUpdateServlet")
public class TreeUpdateServlet extends HttpServlet {

	private static final long serialVersionUID = -527406294804079343L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String  username = session.getAttribute("username").toString();
		System.out.println("username:"+username);
		String sql_only_id = "select only_id from tb_user where username = ?";
		ResultSet rs = JdbcHelper.query(sql_only_id, username);
		String only_id= "";
		try {
			while(rs.next()){
				only_id = rs.getString(1);
			}
			System.out.println("only_id" + only_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String type = request.getParameter("type");
		System.out.println(type);
		int  water_value = Integer.parseInt(request.getParameter("water_value"));
		int  sun_value = Integer.parseInt(request.getParameter("sun_value"));
		System.out.println("water_value" + water_value);
		System.out.println("sun_value" + sun_value);
		/*int level = Integer.parseInt(request.getParameter("level"));*/
		if("water".equals(type)){
			System.out.println("this is water update");
			if(water_value == 100 && sun_value == 100){
				
				String sql_water = "UPDATE tb_tree SET tree_level = tree_level + 1 , water_value = 0 , sun_value = 0  where only_id = ?";
				Boolean b = JdbcHelper.execute(sql_water, only_id);
			}else{
				if(water_value < 100){
					String sql_water = "UPDATE tb_tree SET water_value =" + water_value +"  where only_id = ?";
					Boolean b = JdbcHelper.execute(sql_water,   only_id);
					System.out.println("water ++" + b);
				}
			}	
		}else{
			if("sun".equals(type)){			
				System.out.println("this is sun update");
				if(water_value == 100 && sun_value == 100){
					String sql_water = "UPDATE tb_tree SET tree_level = tree_level + 1 , water_value = 0 , sun_value = 0  where only_id = ?";
					Boolean b = JdbcHelper.execute(sql_water, only_id);
				}else{
					if(sun_value < 100){
						String sql_water = "UPDATE tb_tree SET sun_value ="+ sun_value + " where only_id = ?";
						Boolean b = JdbcHelper.execute(sql_water,  only_id);
						System.out.println("sun ++");
					}	
				}	
			}
		}
	}
}
