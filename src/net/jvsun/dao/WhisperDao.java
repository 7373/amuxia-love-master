package net.jvsun.dao;

import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import net.jvsun.model.Whisper;
import net.jvsun.tools.Conn;

public class WhisperDao {
    Conn conn=new Conn();

    public List<Whisper> getList() throws Exception{
	List<Whisper> list=new ArrayList<Whisper>();
	String sql="SELECT * FROM tb_whisper order by publish_time ASC";
	ResultSet rs=conn.executeQuery(sql);
	while(rs.next()){
	    Whisper whisper=new Whisper();
	    whisper.setId(rs.getInt("id"));
	    whisper.setContent(rs.getString("content"));
	    whisper.setPublisher(rs.getString("publisher"));
	    SimpleDateFormat sdf0 = new SimpleDateFormat("yyyy");
	    String pubYear=sdf0.format(rs.getDate("publish_time"));
	    SimpleDateFormat sdf1 = new SimpleDateFormat("MM-dd");
	    String pubMd=sdf1.format(rs.getDate("publish_time"));
	    whisper.setPublishTime(pubMd);
	    whisper.setPubYear(pubYear);
	    whisper.setMood(rs.getString("mood"));
	    whisper.setIsShow(rs.getInt("isShow"));
	    list.add(whisper);
	}
	conn.close();
	return list;
    }
   
    public int insert(Whisper wh){
	String sql="insert into tb_whisper(content,publisher,publish_time,mood,isShow) values"
			+ "('"+wh.getContent()+"','"+wh.getPublisher()+"',now(),'3333','"+wh.getIsShow()+"')";
	int result=0;
	result=conn.executeUpdate(sql);
	System.out.println(sql);
	conn.close();
	System.out.println(result);
	return result;
    }
}
