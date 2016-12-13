/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gov.wp.kd.pdso.erp.controller;

import gov.wp.kd.pdso.erp.connection.factory.DatabaseResourceFactory;
import gov.wp.kd.pdso.erp.dto.IDApplicantDTO;
import gov.wp.kd.pdso.erp.service.IDApplicantService;
import gov.wp.kd.pdso.erp.service.impl.IDApplicantServieImpl;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author nisalsp9
 */
public class IDApplicant extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

        } finally {
            out.close();
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            System.out.println("do get hit");

            Connection connection = DatabaseResourceFactory.getResourceFactory().getConnection();

            IDApplicantService service = new IDApplicantServieImpl();

            ResultSet resultSet = service.getIDApplicant(connection);

            JSONArray jSONArray = new JSONArray();

            while (resultSet.next()) {
                JSONObject json = new JSONObject();
                json.put("id", resultSet.getString(1));
                json.put("name", resultSet.getString(2));
                json.put("tel", resultSet.getString(3));
                json.put("address", resultSet.getString(4));
                json.put("gender", resultSet.getString(5));
                json.put("job", resultSet.getString(6));
                json.put("dob", resultSet.getString(7));
                json.put("nic", resultSet.getString(8));
                json.put("grama", resultSet.getString(9));
                json.put("dsd", resultSet.getString(10));
                json.put("district", resultSet.getString(11));
                json.put("date", resultSet.getString(12));
                jSONArray.put(json);

            }

            PrintWriter out = response.getWriter();
            out.print(jSONArray);
            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(IDApplicant.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(IDApplicant.class.getName()).log(Level.SEVERE, null, ex);
        } catch (JSONException ex) {
            Logger.getLogger(IDApplicant.class.getName()).log(Level.SEVERE, null, ex);
        }

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            BufferedReader reader = request.getReader();

            JSONObject jsonObject = new JSONObject(reader.readLine().toString());

            String name = jsonObject.getString("name");
            String tel = jsonObject.getString("telephone");
            String address = jsonObject.getString("address");
            String gender = jsonObject.getString("gender");
            String job = jsonObject.getString("occupation");
            String DOB = jsonObject.getString("birthday");
            String NIC = jsonObject.getString("nic");
            String grama = jsonObject.getString("grama");
            String DSD = jsonObject.getString("division");
            String district = jsonObject.getString("district");
            String date = jsonObject.getString("single_cal4");

            IDApplicantDTO dTO = new IDApplicantDTO(0, name, tel, address, gender, job, DOB, NIC, grama, DSD, district, date);

            IDApplicantService service = new IDApplicantServieImpl();

            Connection connection = DatabaseResourceFactory.getResourceFactory().getConnection();

            boolean rst = service.addIDApplicant(connection, dTO);

            if (rst) {

                System.out.println("saved");
                connection.close();

            } else {

                System.out.println("fail");
                connection.close();

            }

        } catch (JSONException ex) {
            Logger.getLogger(IDApplicant.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(IDApplicant.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(IDApplicant.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            String id = req.getParameter("id");

            Connection connection = DatabaseResourceFactory.getResourceFactory().getConnection();

            IDApplicantService service = new IDApplicantServieImpl();

            service.daleteApplicant(connection, id);
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(IDApplicant.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(IDApplicant.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    protected void doOptions(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            BufferedReader reader = req.getReader();
            JSONObject jsonObject = new JSONObject(reader.readLine());
            String name = jsonObject.getString("name");
            String address = jsonObject.getString("address");
            String DOB = jsonObject.getString("dob");
            String NIC = jsonObject.getString("nic");

            Map<String, Object> params = new HashMap();

            params.put("NAME", name);
            params.put("NIC", NIC);
            params.put("ADDRESS", address);
            params.put("DOB", DOB);

            HttpSession session = req.getSession();
            ServletOutputStream outputStream = resp.getOutputStream();        
            String jrxmlFile = session.getServletContext().getRealPath("/reports/scid.jrxml");          

            InputStream input = new FileInputStream(new File(jrxmlFile));

            JasperReport jasperReport = JasperCompileManager.compileReport(input);

            JRDataSource dataSource = new JREmptyDataSource();

            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, params, dataSource);

            JasperExportManager.exportReportToPdfStream(jasperPrint, outputStream);

            outputStream.flush();

            outputStream.close();

            System.out.println("lllllll");

        } catch (JSONException ex) {
            System.out.println("kkkkkk");
            Logger.getLogger(IDApplicant.class.getName()).log(Level.SEVERE, null, ex);
        } catch (JRException ex) {
            System.out.println("ppppp");
            Logger.getLogger(IDApplicant.class.getName()).log(Level.SEVERE, null, ex);
        }

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
