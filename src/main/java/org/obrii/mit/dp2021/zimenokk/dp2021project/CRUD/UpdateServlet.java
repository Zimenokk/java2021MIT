package org.obrii.mit.dp2021.zimenokk.dp2021project.CRUD;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "UserDataServlet", urlPatterns = {"/update"})
public class UpdateServlet extends HttpServlet {

    @Autowired

    CrudSpring CRUD;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this,config.getServletContext());
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Read users

        String dataName=request.getParameter("name");
        List<Data> data = CRUD.sort(dataName);
        request.setAttribute("data" ,data);
        request.getRequestDispatcher("update.jsp").forward(request, response);
    }

}
