/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentationLayer.servlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import serviceLayer.ControllerFacade;

/**
 *
 * @author Nicolai
 */
@WebServlet(name = "EditCustomer", urlPatterns = {"/editcustomer"})
public class EditCustomer extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher rd = null;
        HttpSession session = request.getSession();
        session.setMaxInactiveInterval(30 * 60);

        int customerId = Integer.parseInt((String) session.getAttribute("customerId"));
        String companyName = request.getParameter("companyName");
        String customerFirstName = request.getParameter("customerFirstName");
        String customerLastName = request.getParameter("customerLastName");
        String customerEmail = request.getParameter("customerEmail");

        ControllerFacade controllerFacade = new ControllerFacade();
        try {
            controllerFacade.updateCustomer(customerId, companyName, customerFirstName, customerLastName, customerEmail);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        if (session.getAttribute("admin") != null) {
            rd = request.getRequestDispatcher("/viewSingleCustomer.jsp");
        } else {
            rd = request.getRequestDispatcher("/viewProfile.jsp");
        }
        rd.forward(request, response);

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
