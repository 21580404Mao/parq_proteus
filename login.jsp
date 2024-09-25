<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Proteus - Inicio de Sesi�n</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Inicio de sesi�n</h1>
    
    <!-- Mostrar mensaje de error si hay un par�metro de error -->
    <%
        String error = request.getParameter("error");
        if (error != null) {
            out.println("<p style='color:red; text-align:center;'>Usuario o contrase�a incorrectos.</p>");
        }
    %>
    
    <!-- Formulario de inicio de sesi�n -->
    <form action="LoginServlet" method="post" style="text-align: center;">
        <label for="username">Usuario:</label>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="password">Contrase�a:</label>
        <input type="password" id="password" name="password" required><br><br>
        
        <input type="submit" value="Iniciar Sesi�n">
    </form>
    
    <!-- Iconos de redes sociales -->
    <div class="social-media-icons">
        <a href="https://www.facebook.com" target="_blank">
            <img src="facebook.png" alt="Facebook">
        </a>
        <a href="https://www.whatsapp.com" target="_blank">
            <img src="whatsapp.png" alt="WhatsApp">
        </a>
    </div>
    
    <!-- Pie de p�gina -->
    <footer>
        <p>� 2024 Proteus. Todos los derechos reservados. Visita nuestras redes sociales en:</p>
        <a href="https://www.facebook.com" target="_blank">Facebook</a> |
        <a href="https://www.whatsapp.com" target="_blank">WhatsApp</a>
    </footer>
</body>
</html>

