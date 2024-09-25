package com.proteus.servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ReservaServlet")
public class ReservaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Obtener los parámetros del formulario
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        String fecha = request.getParameter("fecha");
        String hora = request.getParameter("hora");
        String personas = request.getParameter("personas");
        
        // Lógica para procesar la reserva (por ejemplo, guardar en base de datos o enviar un email)
        
        // Enviar una respuesta al cliente
        response.setContentType("text/html");
        response.getWriter().println("<h1>Gracias por tu reserva, " + nombre + "!</h1>");
        response.getWriter().println("<p>Te hemos enviado un correo de confirmación a " + email + ".</p>");
    }
}
