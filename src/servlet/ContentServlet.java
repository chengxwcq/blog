package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.User;
import dao.ContentDAO;
import bean.Content;

public class ContentServlet extends HttpServlet{
    protected void service(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        List<Content> list = new ContentDAO().ListContent(user);
        
        for (Content p : list) {
            System.out.println(p.getTitle());
        }
        
        request.setAttribute("articles", list);
        request.getRequestDispatcher("content.jsp").forward(request, response);
    }
}
