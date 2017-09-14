package net.jvsun.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.malajava.util.JdbcHelper;

/**
 * Servlet implementation class ShowOrHidePictureServlet
 */
@WebServlet("/ShowOrHidePictureServlet")
public class ShowOrHidePictureServlet extends HttpServlet {

	private static final long serialVersionUID = -7424618246567625217L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String type = request.getParameter("type");
		if("show".equals(type)){
			String sql_show = "UPDATE tb_image SET isShow = 1 WHERE id = ?";
			boolean b = JdbcHelper.execute(sql_show, id);
		}else{
			String sql_hide = "UPDATE tb_image SET isShow = 0 WHERE id = ?";
			boolean b = JdbcHelper.execute(sql_hide, id);
			
		}
	}
	
}
