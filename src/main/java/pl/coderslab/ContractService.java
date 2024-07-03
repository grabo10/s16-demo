package pl.coderslab;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
@Transactional
public class ContractService {
    @PersistenceContext
    private EntityManager entityManager;
    private final ContractRepository contractRepository;

    public ContractService(ContractRepository contractRepository) {
        this.contractRepository = contractRepository;
    }

    public void update(Contract contract){
        entityManager.merge(contract);

    }


    public void updateContractStatuses() {
        List<Contract> contracts = contractRepository.findAll();
        LocalDate currentDate = LocalDate.now();

        for (Contract contract : contracts) {
            if (contract.getEndData().isBefore(currentDate)) {
                contract.setStatus("inactive");
            } else {
                contract.setStatus("active");
            }
        }

        contractRepository.saveAll(contracts);
    }
}
