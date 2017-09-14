package net.jvsun.model;

public class Whisper {
    private int id;
    private String content;
    private String publisher;
    private String publishTime;
    private String pubYear;
    private String mood;//心情
    private int isShow;//是否公开
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public String getPublisher() {
        return publisher;
    }
    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }
    public String getPublishTime() {
        return publishTime;
    }
    public void setPublishTime(String publishTime) {
        this.publishTime = publishTime;
    }
    public String getMood() {
        return mood;
    }
    public void setMood(String mood) {
        this.mood = mood;
    }
	public int getIsShow() {
		return isShow;
	}
	public void setIsShow(int isShow) {
		this.isShow = isShow;
	}
	public String getPubYear() {
	    return pubYear;
	}
	public void setPubYear(String pubYear) {
	    this.pubYear = pubYear;
	}
	public Whisper(int id, String content, String publisher, String publishTime, String pubYear, String mood,
		int isShow) {
	    super();
	    this.id = id;
	    this.content = content;
	    this.publisher = publisher;
	    this.publishTime = publishTime;
	    this.pubYear = pubYear;
	    this.mood = mood;
	    this.isShow = isShow;
	}
	public Whisper() {
	    super();
	    // TODO Auto-generated constructor stub
	}
	
	
    
}