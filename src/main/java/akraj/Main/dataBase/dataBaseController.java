package akraj.Main.dataBase;

import org.springframework.stereotype.Component;
import java.sql.*;
import java.util.ArrayList;

@Component
public class dataBaseController {

    public String[] showDataByPartno(String partNo) throws Exception {
        ArrayList<String> li = new ArrayList<>();
        // String db = "jdbc:mysql://localhost:3306/akclient";
        // String name = "root";
        // String password = "0";
        String db = "jdbc:mysql://mysql-33130311-akclient.a.aivencloud.com:26670/akdatabase";
        String name = "avnadmin";
        String password = "AVNS_qSQLP6X3lF7JWpv6OpH";

        try (Connection con = DriverManager.getConnection(db, name, password);
                PreparedStatement ps = con
                        .prepareStatement("SELECT * FROM akdatabase WHERE partNumber = ?");) {
            ps.setString(1, partNo);
            try (ResultSet rs = ps.executeQuery()) {
                ResultSetMetaData metaData = rs.getMetaData();
                int columnCount = metaData.getColumnCount();

                while (rs.next()) {
                    for (int i = 1; i <= columnCount; i++) {
                        try {
                            li.add(rs.getString(i));
                        } catch (SQLException e) {
                            li.add(String.valueOf(rs.getInt(i)));
                        }
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        String[] arr = li.toArray(new String[0]);

        return arr;

    }

    // Connection con =
    // DriverManager.getConnection("jdbc:mysql://localhost:3306/Demo","root","");
    // Statement st = con.createStatement();
    // PreparedStatement ps = con.prepareStatement("insert into student
    // values(?,?);");
    // ps.setInt(1,id);
    // ps.setString(2,name);
    // int num = ps.executeUpdate();
    // System.out.println(" affected rows "+ num);

    public String[] showDataByLotno(int lotNo) throws Exception {
        ArrayList<String> li = new ArrayList<>();
        // String db = "jdbc:mysql://localhost:3306/akclient";
        // String name = "root";
        // String password = "0";
        String db = "jdbc:mysql://mysql-33130311-akclient.a.aivencloud.com:26670/akdatabase";
        String name = "avnadmin";
        String password = "AVNS_qSQLP6X3lF7JWpv6OpH";

        try (Connection con = DriverManager.getConnection(db, name, password);
                PreparedStatement ps = con
                        .prepareStatement("SELECT * FROM akdatabase WHERE lotNumber = ?");) {
            ps.setInt(1, lotNo);
            try (ResultSet rs = ps.executeQuery()) {
                ResultSetMetaData metaData = rs.getMetaData();
                int columnCount = metaData.getColumnCount();

                while (rs.next()) {
                    for (int i = 1; i <= columnCount; i++) {
                        try {
                            li.add(rs.getString(i));
                        } catch (SQLException e) {
                            li.add(String.valueOf(rs.getInt(i)));
                        }
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        String[] arr = li.toArray(new String[0]);

        return arr;

    } ///////////////////////////

    public void createTable() {
        String url = "jdbc:mysql://mysql-33130311-akclient.a.aivencloud.com:26670/akdatabase";
        String user = "avnadmin";
        String password = "AVNS_qSQLP6X3lF7JWpv6OpH";

        // SQL query
        String query = "CREATE TABLE akdatabase ("
                + "partNumber VARCHAR(25) NOT NULL,"
                + "lotNumber BIGINT(12) NOT NULL,"
                + "htLotNumber VARCHAR(25) NOT NULL,"
                + "rmHeatNumber VARCHAR(25) NOT NULL,"
                + "quantity INT(5) NOT NULL,"
                + "operatorName VARCHAR(35) NOT NULL,"
                + "supervisorName VARCHAR(35) NOT NULL,"
                + "sapTokenNumber INT(6) NOT NULL,"
                + "shift VARCHAR(3) NOT NULL,"
                + "date VARCHAR(15) NOT NULL,"
                + "time VARCHAR(15) NOT NULL,"
                + "PRIMARY KEY (time)" // Set time as primary key
                + ")";

        try (Connection con = DriverManager.getConnection(url, user, password);
                java.sql.Statement statement = con.createStatement()) {
            // Execute the query
            statement.executeUpdate(query);
            System.out.println("Table created successfully.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
