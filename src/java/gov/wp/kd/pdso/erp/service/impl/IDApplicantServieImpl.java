/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gov.wp.kd.pdso.erp.service.impl;

import gov.wp.kd.pdso.erp.dao.ID_Applicant;
import gov.wp.kd.pdso.erp.dao.impl.IDApplicantImpl;
import gov.wp.kd.pdso.erp.dto.IDApplicantDTO;
import gov.wp.kd.pdso.erp.service.IDApplicantService;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nisalsp9
 */
public class IDApplicantServieImpl implements IDApplicantService {

    public boolean addIDApplicant(Connection connection, IDApplicantDTO applicant) throws ClassNotFoundException, SQLException {

        ID_Applicant dao = new IDApplicantImpl();

        return dao.addIDApplicant(connection, applicant);

    }

    public ResultSet getIDApplicant(Connection connection) throws ClassNotFoundException, SQLException {

        ID_Applicant dao = new IDApplicantImpl();

        return dao.getIDApplicant(connection);

    }

    public boolean daleteApplicant(Connection connection, String id) throws ClassNotFoundException, SQLException {

        ID_Applicant dao = new IDApplicantImpl();

        return dao.daleteApplicant(connection, id);

    }

    public boolean updateIDApplicant(Connection connection, IDApplicantDTO applicant) throws ClassNotFoundException, SQLException {

        ID_Applicant dao = new IDApplicantImpl();
        
        return dao.updateIDApplicant(connection, applicant);

    }

}
