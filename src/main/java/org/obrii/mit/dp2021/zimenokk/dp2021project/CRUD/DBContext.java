package org.obrii.mit.dp2021.zimenokk.dp2021project.CRUD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {

    private static DBContext dbContext;

    public static final String driverClassName = "org.postgresql.Driver";

    //    local
    private static final String connectionUrl = "jdbc:postgresql://localhost:5432/postgres";
    private static final String user = "postgres";
    private static final String password = "9klQZ0H4o3ZBicALoP3u";

//    obrii
    /*private static final String connectionUrl = "jdbc:postgresql://obrii.org:5432/db2021mit21s5";
    private static final String user = "s5";
    private static final String password = "7628";*/

    private DBContext() {
        try {
            Class.forName(driverClassName);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static DBContext getDbContext() {
        if (dbContext == null) {
            dbContext = new DBContext();
        }
        return dbContext;
    }

    public Connection connection() throws SQLException {
        return DriverManager.getConnection(connectionUrl, user, password);
    }
}

