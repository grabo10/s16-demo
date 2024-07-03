package pl.coderslab;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface RealEstateRepository extends JpaRepository<RealEstate,Long> {
    List<RealEstate> findAll();

    }

