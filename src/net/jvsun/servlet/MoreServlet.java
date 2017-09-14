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

import org.malajava.util.JdbcHelper;

import net.sf.json.JSONArray;

@WebServlet("/MoreServlet")
public class MoreServlet extends HttpServlet {

	private static final long serialVersionUID = 8039341723495176345L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		String sql = "SELECT image_name from tb_image where isShow = 1 ";
		ResultSet rs = JdbcHelper.query(sql);
		List list = new ArrayList();
		try {
			while(rs.next()){
				list.add(rs.getString(1));
				System.out.println(rs.getString(1));
			}
			JSONArray array = JSONArray.fromObject(list);
			response.getWriter().println(array.toString());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}
