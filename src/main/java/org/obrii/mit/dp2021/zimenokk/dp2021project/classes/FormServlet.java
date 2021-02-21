package org.obrii.mit.dp2021.zimenokk.dp2021project.classes;

import org.obrii.mit.dp2021.zimenokk.dp2021project.Data;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "FormServlet", urlPatterns = {"/form"})
public class FormServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Estate estateService = new Estate();

        request.setAttribute("estate", estateService);

        request.getRequestDispatcher("pages/form.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Data data = new Data(
                request.getParameter("name"),
                request.getParameter("email"),
                request.getParameter("houseType"),
                request.getParameter("number")
        );

        request.setAttribute("data", data);
        request.getRequestDispatcher("pages/submit.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}