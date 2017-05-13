package servlet;

import java.io.IOException;
import java.util.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Content;
import bean.User;
import dao.ContentDAO;

public class SubmitArticleServlet extends HttpServlet{
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String content = request.getParameter("content");
        String title = request.getParameter("title");
        User user = (User) request.getSession().getAttribute("user");
        Content p = new Content();
        
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        
        p.setTitle(title);
        p.setContent(content);
        p.setUser(user.getName());
        p.setDate(formatter.format(date));
        
        new ContentDAO().AddContent(p);
        request.setAttribute("add", "true");
        response.sendRedirect("/content");
    }
}
