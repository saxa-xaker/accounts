package ru.rcaltd.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.rcaltd.account.model.DocumentId;


public interface DocsRepository extends JpaRepository<DocumentId, Long> {
    DocumentId findById(Long id);

    DocumentId findByInsurant(String insurant);
}
