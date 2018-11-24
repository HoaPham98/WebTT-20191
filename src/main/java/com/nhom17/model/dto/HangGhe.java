package com.nhom17.model.dto;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class HangGhe {
    private String hang;
    private List<Ghe> gheList;
    private boolean isGheDoi = false;

    public String getHang() {
        return hang;
    }

    public void setHang(String hang) {
        this.hang = hang;
    }

    public List<Ghe> getGheList() {
        return gheList;
    }

    public void setGheList(List<Ghe> gheList) {
        this.gheList = gheList;
        Collections.sort(this.gheList, new Comparator<Ghe>() {
            @Override
            public int compare(Ghe o1, Ghe o2) {
                return o1.getCot() - o2.getCot();
            }
        });
    }

    public boolean isGheDoi() {
        return isGheDoi;
    }

    public void setGheDoi(boolean gheDoi) {
        isGheDoi = gheDoi;
    }
}
