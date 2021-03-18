package org.obrii.mit.dp2021.zimenokk.dp2021project.CRUD;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "UserDataServlet", urlPatterns = {"/update"})
public class UpdateServlet extends HttpServlet {
    DBCrud CRUD = new DBCrud();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Read users
        if (Config.getFileName().equals("")) {
            Config.setFileName(this.getServletContext().getRealPath("") + "data.txt");
            CRUD = new DBCrud();
        }
        String dataName=request.getParameter("name");
        List<Data> data = CRUD.sortData(dataName);
        request.setAttribute("data" ,data);
        request.getRequestDispatcher("update.jsp").forward(request, response);
    }

}
