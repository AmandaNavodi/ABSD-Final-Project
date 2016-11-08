/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gov.wp.kd.pdso.erp.dao.impl;

import gov.wp.kd.pdso.erp.connection.factory.DatabaseResourceFactory;
import gov.wp.kd.pdso.erp.dao.ID_Applicant;
import gov.wp.kd.pdso.erp.dto.IDApplicantDTO;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author nisalsp9
 */
public class IDApplicantImpl implements ID_Applicant {

    public boolean addIDApplicant(Connection connection, IDApplicantDTO applicant) throws ClassNotFoundException, SQLException {

        String sql = "insert into ID_applicant value ("
                + "'0',"
                + "'" + applicant.getName() + "',"
                + "'" + applicant.getTel() + "',"
                + "'" + applicant.getAddress() + "',"
                + "'" + applicant.getGender() + "',"
                + "'" + applicant.getJob() + "',"
                + "'" + applicant.getDOB() + "',"
                + "'" + applicant.getNIC() + "',"
                + "'" + applicant.getGrama() + "',"
                + "'" + applicant.getDSD() + "',"
                + "'" + applicant.getDistrict() + "',"
                + "'" + applicant.getDate() + "')";

        Statement statement = connection.createStatement();

        return 0 < statement.executeUpdate(sql);

    }

}
