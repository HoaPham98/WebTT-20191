package com.nhom17.reposity;

import java.util.ArrayList;

public interface Repository<T> {
    void add(T item);

    void add(Iterable<T> items);

    void update(T item);

    void remove(T item);

    void remove(Specification specification);

    ArrayList<T> query(Specification specification);
}
