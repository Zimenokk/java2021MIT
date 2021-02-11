package org.obrii.mit.dp2021.zimenokk.dp2021project;

import java.util.Arrays;
import java.util.List;

public class Data {


    private String Name;
    private String Email;
    private String HouseType;
    private List<String> Colors;
    private String  Sum;

    public Data(String name, String email, String houseType, String[] colors, String sum) {
        Name = name;
        Email = email;
        HouseType = houseType;
        if (colors != null) Colors = Arrays.asList(colors);
        Sum = sum;
    }

    public String getName() {
        return Name;
    }

    public String getEmail() {
        return Email;
    }

    public String getHouseType() {
        return HouseType;
    }


    public List<String> getColors() {
        return Colors;
    }

    public String getSum() {
        return Sum;
    }
}