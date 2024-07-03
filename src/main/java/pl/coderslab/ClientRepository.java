package pl.coderslab;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface ClientRepository extends JpaRepository<Client,Long> {
    @Query("SELECT c FROM Client c JOIN Contract ct ON c.id = ct.client.id WHERE ct.realEstate.id = :realEstateId")
    List<Client> findClientsByRealEstateId(Long realEstateId);

}
