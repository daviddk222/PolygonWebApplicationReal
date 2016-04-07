/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentationLayer.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import serviceLayer.Controller;
import serviceLayer.entity.Floor;

/**
 *
 * @author danie
 */
@WebServlet(name = "AddFloors", urlPatterns = {"/addfloor"})
public class AddFloors extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = null;
        HttpSession session = request.getSession();
        session.setMaxInactiveInterval(30 * 60);

        try {
            Controller controller = new Controller();
            Floor floor;
            List<Floor> floors = new ArrayList();

            String fNr = "";
            String fSize = "";
            
            for (int i = 0; i < controller.getCurrentBuilding().getFloors(); i++) {
                
                fNr = "floorNr" + (i + 1)  + "";
                fSize = "floorSize" + (i + 1) + "";
                
                session.setAttribute("buildingId", request.getParameter("buildingId"));
                int floorNr = Integer.parseInt(request.getParameter(fNr));
                int floorSize = Integer.parseInt(request.getParameter(fSize));
                int buildingId = Integer.parseInt((String)session.getAttribute("buildingId"));

                floor = new Floor(floorNr, floorSize, buildingId);
                floors.add(floor);

            }
            controller.addFloors(floors);
            rd = request.getRequestDispatcher("index.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            rd = request.getRequestDispatcher("addFloor.jsp");
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
