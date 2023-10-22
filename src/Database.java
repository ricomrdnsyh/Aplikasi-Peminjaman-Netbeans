
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ricomrdnsyh
 */
public class Database {
    public static Connection con;
    public static Connection getcon(){
        if (con == null) {
            try {
                String url = "jdbc:mysql://localhost/aplikasi_peminjaman";
                String user = "root";
                String password = "";
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                con = DriverManager.getConnection(url,user,password);
                System.out.println("Berhasil");
            } catch (Exception e) {
                System.out.println("Error");
            }
        }
        return con;
    }
    
    public static void koneksi(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/aplikasi_peminjaman", "root", "");
            System.out.println("Koneksi Berhasil");
        } catch (Exception e) {
            System.out.println("Koneksi Gagal : " + e.getMessage());
        }
    }
    public static void eksekusi(String sql) {
        try {
            Statement st = con.createStatement();
            st.executeUpdate(sql);
        } catch (Exception e) {
            System.out.println("Error sql : " + e.getMessage());
        }
    }
    public static ResultSet ambilData(String query) {
        ResultSet rs = null;
        try {
            Statement st = con.createStatement();
            rs = st.executeQuery(query);
        } catch (Exception e) {
            System.out.println("Error query : " + e.getMessage());
        }
        return rs;
    }
}
