package org.obrii.mit.dp2021.zimenokk.dp2021project;

import java.util.Arrays;
import java.util.List;

public class Data {


    private String name;
    private String email;
    private String houseType;
    private String houseImage;
    private String sum;

    public Data(String name, String email, String houseType, String sum) {
        this.name = name;
        this.email = email;
        this.houseType = houseType;
        this.sum = sum;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getHouseType() {
        return houseType;
    }

    public String getSum() {
        return sum;
    }
}