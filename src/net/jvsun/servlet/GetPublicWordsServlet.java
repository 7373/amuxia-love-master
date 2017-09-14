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

import net.jvsun.model.Whisper;
import net.jvsun.tools.JdbcHelper;

@WebServlet("/GetPublicWordsServlet")
public class GetPublicWordsServlet extends HttpServlet {

	private static final long serialVersionUID = -1905047682230498944L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sql = "select content , publisher , publish_time from tb_whisper where isShow = 1 order by publish_time";
		List<Whisper> list = new ArrayList();
		ResultSet rs = JdbcHelper.query(sql);
		try {
			while(rs.next()){
				Whisper w = new Whisper();
				w.setContent(rs.getString(1));
				w.setPublisher(rs.getString(2));
				w.setPublishTime(rs.getString(3));
				list.add(w);
			}
			session.setAttribute("list", list);
			rs.close();
			response.sendRedirect(request.getContextPath() + "/more.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
