package bean;

public class Content {
    private int id;
    private String title;
    private String date;
    private String content;
    private String user;

    public int getId() { return id; }
    public String getContent() { return content; }
    public String getTitle() { return title; }
    public String getDate() { return date; }
    public String getUser() { return user; }
    
    public void setId(int id) { this.id = id; }
    public void setUser(String user) { this.user = user; }
    public void setTitle(String title) { this.title = title; }
    public void setDate(String date) { this.date = date; }
    public void setContent(String content) { this.content = content; }
 
}
