package org.obrii.mit.dp2021.zimenokk.dp2021project.CRUD;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DBCrud implements CrudDataInterface{

    public DBCrud() {
        ToolsDB.connectToDB();
        ToolsDB.checkForCreatingTable(ToolsDB.getTableName());
    }

    @Override
    public void createData(Data addingData) {
        ToolsDB.SQLrequest(String.format("INSERT INTO " + ToolsDB.getTableName() + " (name, age, gender, email) VALUES ('%s', %d, '%s', '%s');",
                addingData.getName(), addingData.getAge(), addingData.getGender(), addingData.getEmail()));
    }

    @Override
    public List<Data> readData() {
        try {
            ResultSet result = ToolsDB.getStatement().executeQuery(String.format("SELECT * FROM %s", ToolsDB.getTableName()));
            List<Data> data = new ArrayList<>();

            while (result.next()) {
                data.add(new Data(
                        result.getInt("id"),
                        result.getString("name"),
                        Integer.parseInt(result.getString("age")),
                        result.getString("gender"),
                        result.getString("email")
                ));
            }
            return data;
        } catch (SQLException e) {
            return new ArrayList<>();
        }
    }

    @Override
    public void updateData(int id, Data data) {
        ToolsDB.SQLrequest(String.format("UPDATE " + ToolsDB.getTableName()+ " "
                + "SET name='" + data.getName() + "' , "
                + "age=" + data.getAge() + " , "
                + "gender='" + data.getGender() + "' , "
                + "email='" + data.getEmail() + "' "
                + "WHERE id=" + id)
        );
    }

    @Override
    public void deleteData(int id) {
        ToolsDB.SQLrequest("DELETE FROM " + ToolsDB.getTableName() + " WHERE id=" + id);
    }

    public List<Data> sortData(String keyword) {
        List<Data> newData = new ArrayList<>();
        for (Data d : readData()) {
            if (d.getName().contains(keyword)) {
                newData.add(d);
            }
        }
        return newData;
    }
}
