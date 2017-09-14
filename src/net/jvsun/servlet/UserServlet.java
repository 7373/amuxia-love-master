package net.jvsun.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.jvsun.dao.UserDao;
import net.jvsun.model.User;
import net.jvsun.tools.DataConverter;
import net.jvsun.tools.Utilty;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = -6968080087906459626L;
    protected void service(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	request.setCharacterEncoding("utf-8");
	String action=request.getParameter("action");
	if("log".equals(action)){
		HttpSession session = request.getSession();
		UserDao userDao=new UserDao();
		String username=request.getParameter("username");
		String password=Utilty.MD5(request.getParameter("password"));
		try {
		    if(!userDao.isExist(username, password))
		        response.sendRedirect( request.getContextPath() + "/login.jsp" );
		    else{
			/** 将 User 对象 放入到 会话中 **/
			session.setAttribute( "username" ,username);
			System.out.println(username+"********");
			// 重定向到 list.do ( list.do 会先查询数据后 再 重定向到 list.html )
			response.sendRedirect( request.getContextPath() + "/index.jsp" );
		    }
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
			
	}
	if ("reg".equals(action)) {
	    	User user = new User();
		UserDao userDao = new UserDao();
		try {
		    if (userDao.isExistUser(request.getParameter("username"))) {
		        response.sendRedirect( request.getContextPath() + "/regist.jsp" );
		    } else {
		    	user.setRealname(request.getParameter("realname"));
		    	user.setUsername(request.getParameter("username"));
		    	user.setPassword(request.getParameter("password"));
		    	user.setSex(DataConverter.toInt(request.getParameter("sex")));
		    	user.setPid(DataConverter.toInt(request.getParameter("pid")));
		    	user.setEmail(request.getParameter("email"));
		    	user.setTel(DataConverter.toInt(request.getParameter("tel")));
		    	user.setOnly_id((request
		    			.getParameter("specialCode")));
		    	user.setOur_time(request
		    			.getParameter("jinianri"));
		    	try {
		    	    if(userDao.insert(user) !=0){
		    	        response.sendRedirect( request.getContextPath() + "/regist.jsp" );
		    	    }else{
		    	        response.sendRedirect( request.getContextPath() + "/login.jsp" );
		    	    }
		    	} catch (SQLException e) {
		    	    // TODO Auto-generated catch block
		    	    e.printStackTrace();
		    	}
		    }
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
	}
    }

}
