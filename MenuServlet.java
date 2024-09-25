package com.proteus.servlets;


import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/MenuServlet")
public class MenuServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Verificar si el usuario está autenticado
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("username") != null) {
            // Usuario autenticado, mostrar el menú principal
            request.getRequestDispatcher("menuPrincipal.jsp").forward(request, response);
        } else {
            // Redirigir al inicio de sesión si no está autenticado
            response.sendRedirect("login.jsp");
        }
    }
}



