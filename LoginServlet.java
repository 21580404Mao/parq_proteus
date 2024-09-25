
package com.proteus.servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Obtener parámetros del formulario
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Validar el nombre de usuario y la contraseña (esto es solo un ejemplo sencillo)
        if ("admin".equals(username) && "1234".equals(password)) {
            // Crear una sesión y almacenar el nombre de usuario
            HttpSession session = request.getSession();
            session.setAttribute("username", username);

            // Redirigir al menú principal
            response.sendRedirect("menuPrincipal.jsp");
        } else {
            // Redirigir de vuelta a la página de login con un mensaje de error
            response.sendRedirect("login.jsp?error=1");
        }
    }
}
