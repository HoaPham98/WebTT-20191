package com.nhom17.model.reposity;

import java.util.List;

public interface IDAO<T> {
    int add(T item);

    int[] add(Iterable<T> items);

    int update(T item);

    int[] batch(List<T> items);

    int remove(T item);

    int remove(String ...conditions);

    T getOne(String id);

    List<T> getall();

    List<T> query(String ...conditions);
}
