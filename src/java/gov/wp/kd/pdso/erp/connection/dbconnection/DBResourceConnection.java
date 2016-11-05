/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gov.wp.kd.pdso.erp.connection.dbconnection;

import java.sql.Connection;
import gov.wp.kd.pdso.erp.connection.ResourceConnection;
import java.sql.SQLException;

/**
 *
 * @author nisalsp9
 */
public interface DBResourceConnection extends ResourceConnection{
    
    public Connection getConnection()throws SQLException,ClassNotFoundException;
    
}
