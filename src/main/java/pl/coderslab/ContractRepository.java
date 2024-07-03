package pl.coderslab;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ContractRepository extends JpaRepository<Contract,Long> {
    Contract findByCode(String code);
    List <Contract> findContractByClientId(Long id);
    Contract findContractById(Long id);
}