package com.nhom17.model.reposity;

import java.util.ArrayList;

public interface IRepository<T> {
    void add(T item);

    void add(Iterable<T> items);

    void update(T item);

    void remove(T item);

    void remove(String ...conditions);

    ArrayList<T> getall();

    ArrayList<T> query(String ...conditions);
}
