/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Fresita
 */
public class Cliente {
    String nombre_cliente,
            apellido1_cliente,
            apellido2_cliente,
            email_cliente,
            telefono_cliente,
            provincia_cliente,
            municipio_cliente,
            direccion_cliente;
    int codigo_postal_cliente;
    
    Connection conexion;

    public Cliente() throws Exception {
        conect();
    }

    private Connection conect() throws Exception {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/laratitapresumida", "root", "");
        } catch (Exception e) {
            throw new Exception(e);
        }
        return conexion;
    }
    
    public boolean insertarCliente(String email_cliente, String nombre_cliente, String apellido1_cliente, 
                                   String apellido2_cliente, String telefono_cliente, String direccion_cliente, 
                                   String provincia_cliente, String municipio_cliente, int codigo_postal_cliente) throws Exception {
                                   
        Connection conn = null;
        ResultSet result = null;
        int registrosAfectados = 0;
        PreparedStatement statement = null;
        String dml;
        try {
            Statement sentencia = conect().createStatement();
            dml = "INSERT INTO CLIENTES(email_cliente,nombre_cliente,apellido1_cliente,apellido2_cliente,telefono_cliente,"
                    + "direccion_cliente,provincia_cliente,municipio_cliente,codigo_postal_cliente) "
                    + "VALUES ('" + email_cliente + "','" + nombre_cliente + "','" + apellido1_cliente + "','" + apellido2_cliente + "','"
                    + telefono_cliente + "','" + direccion_cliente + "','" + provincia_cliente + "','" + municipio_cliente + "'," + codigo_postal_cliente + ")";
            registrosAfectados = sentencia.executeUpdate(dml);
            if (registrosAfectados == 1) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException sqle) {
            throw new Exception(sqle);
        } finally {
            if (result != null) {
                try {
                    result.close();
                } catch (SQLException sql) {
                    throw new Exception(sql);
                }
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException sql) {
                    throw new Exception(sql);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException sql) {
                    throw new Exception(sql);
                }
            }
        }
    }
}
