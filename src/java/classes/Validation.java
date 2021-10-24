/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author adnan
 */
public class Validation extends HttpServlet {

    Connection con = null;

    //These statements will provide functionality for the admin
    static PreparedStatement query = null;

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("loginMail");
        String password = request.getParameter("loginPwd");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            ResultSet rs = DBUtils.viewAlumniList();
            String dbPwd = rs.getString("password");
            while (rs.next()) {
                if (rs.getString("email").equals(email)) {
                    dbPwd = rs.getString("password");
                }
            }

            if (password.equals(dbPwd)) {
                response.sendRedirect("admin.jsp");
            } else {
                response.sendRedirect("dashboard.jsp");
            }

        } catch (Exception e) {
            response.sendRedirect("login.jsp");
        }
    }

}
