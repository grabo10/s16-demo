package pl.coderslab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class CommunicationService {

    private final CommunicationRepository communicationRepository;
    private final ContractRepository contractRepository;

    public CommunicationService(CommunicationRepository communicationRepository, ContractRepository contractRepository) {
        this.communicationRepository = communicationRepository;
        this.contractRepository = contractRepository;
    }

    public Communication sendMessage(Long contractId, String message) {
        Contract contract = contractRepository.findById(contractId).orElseThrow(() -> new IllegalArgumentException("Invalid contract ID")); //try to change
        Communication communication = new Communication();
        communication.setContract(contract);
        communication.setMessage(message);
        return communicationRepository.save(communication);
    }
}
