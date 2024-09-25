<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Confirmación de Reserva</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Reserva Confirmada</h1>

    <p>Gracias <strong><%= request.getAttribute("nombre") %></strong>, tu reserva ha sido confirmada.</p>
    <p>Detalles de la Reserva:</p>
    <ul>
        <li><strong>Email:</strong> <%= request.getAttribute("email") %></li>
        <li><strong>Fecha:</strong> <%= request.getAttribute("fecha") %></li>
        <li><strong>Hora:</strong> <%= request.getAttribute("hora") %></li>
        <li><strong>Número de Personas:</strong> <%= request.getAttribute("personas") %></li>
    </ul>

    <p>Te esperamos pronto.</p>

    <!-- Pie de página -->
    <footer>
        <p>© 2024 Proteus. Todos los derechos reservados.</p>
    </footer>
</body>
</html>
