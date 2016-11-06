/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gov.wp.kd.pdso.erp.service;

import gov.wp.kd.pdso.erp.dto.IDApplicant;
import java.sql.SQLException;

/**
 *
 * @author nisalsp9
 */
public interface IDApplicantService {
        public boolean addIDApplicant(IDApplicant applicant)throws ClassNotFoundException,SQLException;

}
