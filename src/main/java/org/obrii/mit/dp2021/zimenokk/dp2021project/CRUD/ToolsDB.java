package org.obrii.mit.dp2021.zimenokk.dp2021project.CRUD;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class ToolsDB {

        private static Connection connection;
        private static Statement statement;
        private static String tableName = "qwerty";


        public static Statement getStatement() {
            return statement;
        }

        public static String getTableName() {
            return tableName;
        }

        /**
         * Send request to DB
         */
        public static void SQLrequest(String request) {
            try {
                ToolsDB.statement.executeUpdate(request);
                ToolsDB.connection.commit();
            } catch (SQLException exception) {
                exception.printStackTrace();
            }
        }

        public static void connectToDB(){
            try {
                Class.forName(DBContext.driverClassName).getDeclaredConstructor().newInstance();
                ToolsDB.connection = DBContext.getDbContext().connection();
                ToolsDB.connection.setAutoCommit(false);
                ToolsDB.statement = connection.createStatement();
            }
            catch (Exception e) {
                e.printStackTrace();
                System.err.println(e.getClass().getName()+": "+e.getMessage());
                System.exit(0);
            }
        }

        public static void createTable(){
            ToolsDB.SQLrequest("CREATE TABLE " + ToolsDB.getTableName() + " ("
                    + "id integer primary key not null, "
                    + "firstName text not null, "
                    + "lastName text not null, "
                    + "phone text not null, "
                    + "date text not null "
                    + ");");
        }

        public static void checkForCreatingTable(String tablename){
            String sql = String.format("CREATE OR REPLACE FUNCTION create_table()\n" +
                    "  RETURNS void\n" +
                    "  LANGUAGE plpgsql AS\n" +
                    "$func$\n" +
                    "BEGIN\n" +
                    "   IF EXISTS (SELECT FROM pg_catalog.pg_tables WHERE tablename='%s') THEN\n" +
                    "      RAISE NOTICE 'Table %s already exists.';\n" +
                    "   ELSE\n" +
                    "      CREATE TABLE %s (" +
                    "id serial, "
                    + "name text not null, "
                    + "age integer not null, "
                    + "gender text not null, "
                    + "email text not null "
                    + ");\n" +
                    "   END IF;\n" +
                    "END\n" +
                    "$func$;" +
                    "SELECT create_table();", tablename, tablename, tablename);
            ToolsDB.SQLrequest(sql);
        }
}
