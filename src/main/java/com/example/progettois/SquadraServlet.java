package com.example.progettois;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.nio.file.Files;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/SquadraServlet")
public class SquadraServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/jsp");

        List<Squadra> squadre = new ArrayList<>();

        String jdbcURL = "jdbc:mysql://localhost:3306/serieashop";
        String username = "root";
        String password = "!Domenico02";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, username, password);

            String sql = "SELECT idSquadra, pathLogo FROM Squadra";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String nomeSquadra = resultSet.getString("idSquadra");
                String pathLogo = resultSet.getString("pathLogo");

                Squadra squadra = new Squadra(pathLogo, nomeSquadra);
                squadre.add(squadra);
            }

            request.getSession().setAttribute("squadre", squadre);
            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
