package ru.rcaltd.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.rcaltd.account.model.ArbitrID;


public interface ArbitrRepository extends JpaRepository<ArbitrID, Long> {
    ArbitrID findById(Long id);

}
