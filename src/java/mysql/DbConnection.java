/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mysql;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFileChooser;
import javax.swing.filechooser.FileNameExtensionFilter;

/**
 *
 * @author Cris
 */
public class DbConnection {

    String bd = "recupero";
    
    String login = "root";
    String password = "";
    String url = "jdbc:mysql://localhost:3306/" + bd;
    
//    String login = "gaveteco";
//    String password = "gave";
//    String url = "jdbc:mysql://190.192.24.228:3306/" + bd;
    
    Connection conn = null;
    Statement st;

    /**
     * Constructor de DbConnection
     */
    public DbConnection() {
        try {
            //obtenemos el driver de para mysql
            Class.forName("com.mysql.jdbc.Driver");
            //obtenemos la conexión
            conn = DriverManager.getConnection(url, login, password);
            st = conn.createStatement();
            if (conn != null) {
                System.out.println("Conexión a base de datos " + bd + " OK");
            }
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println(e);
        }
    }

    /**
     * Permite retornar la conexión
     */
    public Connection getConnection() {
        return conn;
    }

    public void desconectar() {
        conn = null;
    }

    public ResultSet query(String sentencia) {
        ResultSet rs;
        try {
            rs = st.executeQuery(sentencia);
        } catch (SQLException e) {
            rs = null;
        }
        return rs;
    }

    public boolean executeQuery(String sentencia) throws SQLException {
        boolean resultado = st.execute(sentencia);
        return resultado;
    }

    public void conectar() {
        if (conn == null) {


            try {
                //obtenemos el driver de para mysql
                Class.forName("com.mysql.jdbc.Driver");
                //obtenemos la conexión
                conn = DriverManager.getConnection(url, login, password);
                if (conn != null) {
                    System.out.println("Conexión a base de datos " + bd + " OK");
                }
            } catch (SQLException | ClassNotFoundException e) {
                System.out.println(e);
            }
        }
    }

    

    
}
