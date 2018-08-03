package ru.rcaltd.account.service;

import ru.rcaltd.account.model.ArbitrID;

public interface ArbitrService {
    void save(ArbitrID arbitrID);

    ArbitrID findById(Long id);
}
