package com.nhom17.model.reposity.impl;

import com.nhom17.model.reposity.IDAO;

import java.util.ArrayList;
import java.util.List;

public class CommonDao<T> implements IDAO<T> {

    @Override
    public void add(T item) {

    }

    @Override
    public void add(Iterable<T> items) {

    }

    @Override
    public int update(T item) {
        return 0;
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
    public List<T> getall() {
        return null;
    }

    @Override
    public ArrayList<T> query(String... conditions) {
        return null;
    }

    @Override
    public int[] batch(List<T> items) {
        return new int[0];
    }
}
