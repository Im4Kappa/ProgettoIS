/*
import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/CaricaSquadre")
public class CaricaSquadre extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Eseguire qui la logica per recuperare i dati dal database
        List<squadra> squadre = // Carica i dati dal database, ad esempio utilizzando JDBC

                // Imposta l'attributo nell'oggetto di richiesta
                request.setAttribute("squadre", squadre);

        // Inoltra alla pagina JSP che visualizzerà i dati
        request.getRequestDispatcher("/navbar.jsp").forward(request, response);
    }
}
*/