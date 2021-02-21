package org.obrii.mit.dp2021.zimenokk.dp2021project.classes;

import org.obrii.mit.dp2021.zimenokk.dp2021project.houses.*;
import org.obrii.mit.dp2021.zimenokk.dp2021project.interfaces.*;

import java.util.ArrayList;
import java.util.List;

public class Estate implements IService<IHouse> {
    @Override
    public List<IHouse> getHouses() {

        List<IHouse> houses = new ArrayList<>();

        houses.add(new SmallHouse());
        houses.add(new Penthouse());
        houses.add(new BussinessHouse());

        return houses;
    }
}
