<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reserva en Línea</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Reserva en Línea</h1>

    <form action="ReservaServlet" method="post" class="reserva-form">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="fecha">Fecha de la Reserva:</label>
        <input type="date" id="fecha" name="fecha" required><br><br>

        <label for="hora">Hora:</label>
        <input type="time" id="hora" name="hora" required><br><br>

        <label for="personas">Número de Personas:</label>
        <input type="number" id="personas" name="personas" min="1" required><br><br>

        <input type="submit" value="Reservar">
    </form>

    <!-- Pie de página -->
    <footer>
        <p>© 2024 Proteus. Todos los derechos reservados.</p>
    </footer>
</body>
</html>
