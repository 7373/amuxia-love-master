package net.jvsun.servlet;

import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.malajava.util.JdbcHelper;

import net.jvsun.model.Whisper;
import net.jvsun.model.WordsList;
import net.jvsun.tools.Utilty;

/**
 * Servlet implementation class OurWordsServlet
 */
@WebServlet("/OurWordsServlet")
public class OurWordsServlet extends HttpServlet {

    private static final long serialVersionUID = 2751761107250255709L;

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {

	HttpSession session = request.getSession();
	//如果没有登录
	if (session.getAttribute("username") == null) {
	    //则跳转到登录页面
	    response.sendRedirect(request.getContextPath() + "/login.jsp");
	} else {
	    String username_1 = session.getAttribute("username").toString();
	    int sex = 0;
	    String sql_find_onlyId = "SELECT only_id , sex FROM tb_user WHERE username = ?";
	    ResultSet rs = JdbcHelper.query(sql_find_onlyId, username_1);
	    String onlyId = "";
	    try {
		if (rs.next()) {
		    onlyId = rs.getString(1);
		    sex = rs.getInt(2);
		}
		rs.close();
	    } catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	    }
	    String username_2 = "";
	    String sql_find_user = "SELECT username FROM tb_user WHERE only_id = ? AND sex != ? ";
	    ResultSet rs_username = JdbcHelper.query(sql_find_user, onlyId, sex);
	    try {
		while (rs_username.next()) {
		    username_2 = rs_username.getString(1);
		}
		rs_username.close();
	    } catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	    }
	    List<WordsList> wordList = new ArrayList();
	    Timestamp now = new Timestamp(System.currentTimeMillis());// 获取系统当前时间
	    String Tim = SplitYear(now); // 获取当前 年 ;
	    String sql_words = "SELECT id,content,publisher,publish_time,mood,isShow FROM tb_whisper WHERE publisher = ? or publisher = ? ORDER BY publish_time";
	    ResultSet rs_words = JdbcHelper.query(sql_words, username_1, username_2);
	    List wordslist = new ArrayList();
	    List list_time = new ArrayList();
	    try {
		while (rs_words.next()) {
		    /*
		     * String y = SplitYear(rs_words.getTimestamp(4));
		     * 
		     * if(y.equals(Tim)){
		     */
		    Whisper whisper = new Whisper();
		    whisper.setId(rs_words.getInt(1));
		    whisper.setContent(rs_words.getString(2));
		    whisper.setPublisher(rs_words.getString(3));
		    whisper.setPublishTime(rs_words.getString(4));
		    // 将publish_time 的 年 存入
		    /* list_time.add(SplitYear(rs_words.getTimestamp(4))); */

		    whisper.setMood(rs_words.getString(5));
		    whisper.setIsShow(rs_words.getInt(6));
		    wordslist.add(whisper);
		}

	    } catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	    }
	    for (int i = 0; i < wordslist.size(); i++) {
		Whisper whisper = (Whisper) wordslist.get(i);
		System.out.println("content:" + whisper.getContent());
	    }
	    session.setAttribute("wordsList", wordslist);
	    response.sendRedirect(request.getContextPath() + "/record.jsp");
	}
    }

    // 获取当前时间的 "年"
    public String SplitYear(Timestamp date) {
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");// 定义格式，只显示日期
	/* Timestamp now = new Timestamp(date);//获取系统当前时间 */
	String str = df.format(date);
	String Year[] = str.split("-");
	return Year[0];
    }

}
