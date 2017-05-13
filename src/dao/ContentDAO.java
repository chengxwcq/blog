package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import bean.Content;
import bean.User;

public class ContentDAO {
    
    public static void main(String[] args) {
        Content p = new Content();
        p.setTitle("for_test");
        p.setDate("1995");
        p.setUser("mc");
        p.setContent("hahahah");
        new ContentDAO().AddContent(p);
    }
    
    public List<Content> ListContent(User user) {
        List<Content> list = new LinkedList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/blog?characterEncoding=UTF-8",
                    "root", "password");
            String sql = "select * from content where user = ?"; 
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setString(1, user.getName());
            
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Content content = new Content();
                content.setId(rs.getInt(1));
                content.setTitle(rs.getString(2));
                content.setDate(rs.getString(3));
                content.setContent(rs.getString(4));
                content.setUser(rs.getString(5));

                list.add(content);
            }

            ps.close();
            c.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public Content getContent(int id) {
        Content content = new Content();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/blog?characterEncoding=UTF-8",
                    "root", "password");
            String sql = "select * from content where id = ?"; 
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                content.setId(id);
                content.setTitle(rs.getString(2));
                content.setDate(rs.getString(3));
                content.setContent(rs.getString(4));
                content.setUser(rs.getString(5));
            }

            ps.close();
            c.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return content;
    }
    
    public boolean AddContent(Content content) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/blog?characterEncoding=UTF-8",
                    "root", "password");
            String sql = "INSERT INTO content VALUES (null, ?, ?, ?, ?)"; 
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setString(1, content.getTitle());
            ps.setString(2, content.getDate());
            ps.setString(3, content.getContent());
            ps.setString(4, content.getUser());
            
            ps.executeUpdate();

            ps.close();
            c.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("add successfully!");
        return true;
    }
}
