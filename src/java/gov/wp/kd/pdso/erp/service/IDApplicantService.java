/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gov.wp.kd.pdso.erp.service;

import gov.wp.kd.pdso.erp.dto.IDApplicantDTO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nisalsp9
 */
public interface IDApplicantService {

    public boolean addIDApplicant(Connection connection, IDApplicantDTO applicant) throws ClassNotFoundException, SQLException;

    public ResultSet getIDApplicant(Connection connection) throws ClassNotFoundException, SQLException;

    public boolean daleteApplicant(Connection connection, String id) throws ClassNotFoundException, SQLException;

}
