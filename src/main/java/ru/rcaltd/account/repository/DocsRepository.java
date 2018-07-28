package ru.rcaltd.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.rcaltd.account.model.Document_id;


public interface DocsRepository extends JpaRepository<Document_id, Long> {
    Document_id findById(Long id);
}
