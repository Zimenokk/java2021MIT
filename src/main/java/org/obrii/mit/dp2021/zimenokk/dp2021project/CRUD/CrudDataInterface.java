package org.obrii.mit.dp2021.zimenokk.dp2021project.CRUD;

import java.util.List;

public interface CrudDataInterface {

    void createData(Data addingData);

    List<Data> readData();

    void updateData(int id, Data data);

    void deleteData(int id);

    void writeData(List<Data> data);
    
    public List<Data> sortData(String phrase);

}
