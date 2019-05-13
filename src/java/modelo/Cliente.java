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

    public Cliente leerCliente(String email) throws Exception {
        Cliente cliente = new Cliente();
        String dql = "";
        try {
            Statement sentencia = conexion.createStatement();
            dql = "select * from CLIENTE where email_cliente= " + email;
            ResultSet resultado = sentencia.executeQuery(dql);

            if (resultado.next()) {
                cliente.setNombre_cliente(resultado.getString(""));
                cliente.setApellido1_cliente(resultado.getString(""));
                cliente.setApellido2_cliente(resultado.getString(""));
                cliente.setEmail_cliente(resultado.getString(""));
            }

            resultado.close();
            sentencia.close();
            conexion.close();

        } catch (SQLException ex) {
            System.out.println(ex.getSQLState());
        }
        return cliente;
    }

    public String getNombre_cliente() {
        return nombre_cliente;
    }

    public void setNombre_cliente(String nombre_cliente) {
        this.nombre_cliente = nombre_cliente;
    }

    public String getApellido1_cliente() {
        return apellido1_cliente;
    }

    public void setApellido1_cliente(String apellido1_cliente) {
        this.apellido1_cliente = apellido1_cliente;
    }

    public String getApellido2_cliente() {
        return apellido2_cliente;
    }

    public void setApellido2_cliente(String apellido2_cliente) {
        this.apellido2_cliente = apellido2_cliente;
    }

    public String getEmail_cliente() {
        return email_cliente;
    }

    public void setEmail_cliente(String email_cliente) {
        this.email_cliente = email_cliente;
    }

    public String getTelefono_cliente() {
        return telefono_cliente;
    }

    public void setTelefono_cliente(String telefono_cliente) {
        this.telefono_cliente = telefono_cliente;
    }

    public String getProvincia_cliente() {
        return provincia_cliente;
    }

    public void setProvincia_cliente(String provincia_cliente) {
        this.provincia_cliente = provincia_cliente;
    }

    public String getMunicipio_cliente() {
        return municipio_cliente;
    }

    public void setMunicipio_cliente(String municipio_cliente) {
        this.municipio_cliente = municipio_cliente;
    }

    public String getDireccion_cliente() {
        return direccion_cliente;
    }

    public void setDireccion_cliente(String direccion_cliente) {
        this.direccion_cliente = direccion_cliente;
    }

    public int getCodigo_postal_cliente() {
        return codigo_postal_cliente;
    }

    public void setCodigo_postal_cliente(int codigo_postal_cliente) {
        this.codigo_postal_cliente = codigo_postal_cliente;
    }

    public Connection getConexion() {
        return conexion;
    }

    public void setConexion(Connection conexion) {
        this.conexion = conexion;
    }

}
