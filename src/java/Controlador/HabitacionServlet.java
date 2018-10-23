/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Habitacion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HabitacionServlet extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String tipoHabt=request.getParameter("tipoHabitacion");
            String descripcionHabt=request.getParameter("descripcionHabitacion");
            int  capacidadHabt= Integer.parseInt(request.getParameter("capacidadHabitacion"));
            String estadoHabt=request.getParameter("estadoHabitacion");
            int habtHotelPerteneciente= Integer.parseInt(request.getParameter("habitacionHotelPerteneciente"));
            Habitacion hb = new Habitacion();
            hb.insertar_nueva_habitacion(tipoHabt, descripcionHabt, capacidadHabt, estadoHabt, habtHotelPerteneciente);
            String direccionPagina="http://localhost:8080/Hotel/cnhabitacion.jsp";//aqui se debe cambiar la direccion para redireccionar
            request.getSession().setAttribute("direccion", direccionPagina); 
            request.getRequestDispatcher("/confirmacionInsercion.jsp").forward(request, response);;
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
