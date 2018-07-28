package ru.rcaltd.account.service;

import ru.rcaltd.account.model.Document_id;

public interface DocsService {
    void save(Document_id document_id);

    Document_id findById(Long id);

}
