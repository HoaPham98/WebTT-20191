package com.nhom17.reposity;

import java.util.ArrayList;

public class CommonReposity<T> implements IRepository<T> {

    @Override
    public void add(T item) {

    }

    @Override
    public void add(Iterable<T> items) {

    }

    @Override
    public void update(T item) {

    }

    @Override
    public void remove(T item) {

    }

    @Override
    public void remove(String... conditions) {

    }

    @Override
    public ArrayList<T> getall() {
        return null;
    }

    @Override
    public ArrayList<T> query(String... conditions) {
        return null;
    }
}
