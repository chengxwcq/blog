package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

import dao.ContentDAO;
import bean.Content;

public class GetArticleServlet extends HttpServlet{
    protected void service(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Content content = new ContentDAO().getContent(id);
        request.setAttribute("content", content);
        request.getRequestDispatcher("article.jsp").forward(request, response);
    }
}
