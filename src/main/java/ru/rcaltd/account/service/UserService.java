package ru.rcaltd.account.service;

import ru.rcaltd.account.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
