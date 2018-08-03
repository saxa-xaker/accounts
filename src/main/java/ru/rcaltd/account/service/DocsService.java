package ru.rcaltd.account.service;

import ru.rcaltd.account.model.DocumentId;

public interface DocsService {
    void save(DocumentId document_id);

    DocumentId findById(Long id);
    DocumentId findByInsurant(String insurant);

}
