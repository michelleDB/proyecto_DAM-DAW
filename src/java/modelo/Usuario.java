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
import org.apache.commons.codec.digest.DigestUtils;

/**
 *
 * @author Fresita
 */
public class Usuario {

    String password_usuario,
            email_cliente;
    int id_rol = 2;
    Cliente c;
    
    Connection conexion;

    public Usuario() throws Exception {
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

    public int iniciarSesion(String password_usuario, String email_cliente) throws Exception {
        Connection conn = null;
        ResultSet result = null;
        Statement statement = null;
        try {
            conn = conect();
            statement = conn.createStatement();
            System.out.println("contrasena normal"+password_usuario);
            System.out.println("contrasena md5"+DigestUtils.md5Hex(password_usuario));
            String dml = "SELECT * FROM USUARIOS WHERE password_usuario LIKE '" + DigestUtils.md5Hex(password_usuario) + "' && email_cliente LIKE '" + email_cliente + "' && id_rol LIKE " + 2;
            result = statement.executeQuery(dml);
            if (result.next()) {
                return result.getInt("id_usuario");
            } else {
                return 0;
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

    public boolean insertarUsuario(String password_usuario, String email_cliente) throws Exception {
        Connection conn = null;
        ResultSet result = null;
        int registrosAfectados = 0;
        PreparedStatement statement = null;
        try {
            Statement sentencia = conect().createStatement();
            String dml = "INSERT INTO USUARIOS(password_usuario,email_cliente,id_rol) VALUES "
                    + "('" + DigestUtils.md5Hex(password_usuario) + "','" + email_cliente + "'," + id_rol + ")";
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
            } else {
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

    public String getPassword_usuario() {
        return password_usuario;
    }

    public void setPassword_usuario(String password_usuario) {
        this.password_usuario = password_usuario;
    }

    public String getEmail_cliente() {
        return email_cliente;
    }

    public void setEmail_cliente(String email_cliente) {
        this.email_cliente = email_cliente;
    }

    public int getId_rol() {
        return id_rol;
    }

    public void setId_rol(int id_rol) {
        this.id_rol = id_rol;
    }
}
