package com.nhom17.model.reposity;

import java.util.ArrayList;
import java.util.List;

public interface IDAO<T> {
    void add(T item);

    void add(Iterable<T> items);

    int update(T item);

    int[] batch(List<T> items);

    void remove(T item);

    void remove(String ...conditions);

    T getOne(String id);

    List<T> getall();

    List<T> query(String ...conditions);
}
