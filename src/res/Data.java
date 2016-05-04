package res;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Data {
    private static Database db;

    static {
        db = new Database();
    }

    public static List<Pascal> getPascals() throws SQLException {
        List<Pascal> pascals = new ArrayList<Pascal>();
        try {
            ResultSet rs = db.getResultSet("select * from pascals");
            while (rs.next()) {
                Pascal pascal = new Pascal(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getString(6));
                pascals.add(pascal);
            }
        } catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return pascals;
    }

    public static Pascal getPascal(String id) throws SQLException {
        Pascal error = null;
        try {
            ResultSet rs = db.getResultSet("select * from pascals where id='" + id + "'");
            while (rs.next()) {
                return new Pascal(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getString(6));
            }
        } catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return error;
    }

    public static void addPascal(Pascal pascal) throws SQLException {
        try {
            db.update("INSERT INTO pascals (nameAndParameters,procedureOrFunction," +
                    "parameterTypes,returnType,act) VALUES('" + pascal.getNameAndParameters()
                    + "','" + pascal.getProcedureOrFunction() + "','" + pascal.getParameterTypes() +
                    "','" + pascal.getReturnType() + "','"
                    + pascal.getAct() + "')");
        } catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static void editPascal(Pascal pascal, String id) throws SQLException {
        try {
            db.update("UPDATE pascals SET nameAndParameters='" + pascal.getNameAndParameters() + "',procedureOrFunction='"
                    + pascal.getProcedureOrFunction() + "',parameterTypes='" + pascal.getParameterTypes() +
                    "',returnType='" + pascal.getReturnType()
                    + "',act='" + pascal.getAct() + "' WHERE id='" + id + "'");
        } catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static void delete(String id) throws SQLException {
        try {
            db.update("DELETE FROM pascals WHERE id='" + id + "'");
        } catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

}
