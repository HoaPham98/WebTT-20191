package com.nhom17.model.reposity.impl;

import com.nhom17.model.dto.Ghe;

public class GheDao extends CommonDao<Ghe> {

    private GheDao() {
    }

    public static GheDao createGheReposity() {
        return new GheDao();
    }
}
