package net.jvsun.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet( "/logout.do" )
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 4280244160640917905L;
	@Override
	protected void service( HttpServletRequest request , HttpServletResponse response ) 
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		// 将 当前会话废弃 ( 其中的数据也就丢失了 )
		session.invalidate();
		response.sendRedirect( request.getContextPath() + "/index.jsp" );
		
	}

}
