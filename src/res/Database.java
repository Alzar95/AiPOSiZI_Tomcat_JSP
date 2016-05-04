package res;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

class Database {
    private Connection getConnection()
            throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException {
        String pass = "root";
        String userDB = "root";
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/language_pascal", userDB, pass);
    }

    ResultSet getResultSet(String sql)
            throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException {
        Connection conn = getConnection();
        Statement st = conn.createStatement();
        return st.executeQuery(sql);
    }

    void update(String sql)
            throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException {
        Connection conn = getConnection();
        Statement st = conn.createStatement();
        st.executeUpdate(sql);
    }
}