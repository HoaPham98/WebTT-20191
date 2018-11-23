package com.nhom17.model.reposity.impl;

import com.nhom17.model.reposity.IDAO;

import java.util.ArrayList;

public class CommonDao<T> implements IDAO<T> {

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
    public T getOne(String id) {
        return null;
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
