package pl.coderslab;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;


@Controller
@RequestMapping("contracts")
public class ContractController {
    private final RealEstateRepository realEstateRepository;
    private final ContractRepository contractRepository;
    private final ClientRepository clientRepository;
    private final CommunicationService communicationService;
    private final ContractService contractService;

    public ContractController(RealEstateRepository realEstateRepository, ContractRepository contractRepository,ClientRepository clientRepository, CommunicationService communicationService, ContractService contractService) {
        this.realEstateRepository = realEstateRepository;
        this.contractRepository = contractRepository;
        this.clientRepository = clientRepository;
        this.communicationService = communicationService;
        this.contractService = contractService;
    }

    @GetMapping("/contract-form")
    public String showContractForm(Model model) {
        model.addAttribute("contract", new Contract());
        model.addAttribute("realEstates", realEstateRepository.findAll());
        model.addAttribute("clients", clientRepository.findAll());
        return "contract-form";
    }
    @PostMapping("/contract-form")
    public String submitContractForm(@Valid Contract contract, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("realEstates", realEstateRepository.findAll());
            model.addAttribute("clients", clientRepository.findAll());
            return "contract-form";
        }
        contractRepository.save(contract);
        return "redirect:/";
    }
    @GetMapping("/view")
    public String viewContract(Model model){
        model.addAttribute("contracts", contractRepository.findAll());
        contractService.updateContractStatuses();
        return "contract-view";
    }
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable long id, Model model) {
        model.addAttribute("contract", contractRepository.findById(id));
        model.addAttribute("realEstates", realEstateRepository.findAll());
        model.addAttribute("clients", clientRepository.findAll());
        return "contract-form";
    }
    @PostMapping("/edit/{id}")
        public String update(Contract contract) {
            contractService.update(contract);
            return "redirect:/contracts/view";
        }
    @GetMapping("/send-message/{contractId}")
    public String showSendMessageForm(@PathVariable Long contractId, Model model) {
        Communication communication = new Communication();
        Contract contract = contractRepository.findContractById(contractId);
        communication.setContract(contract);
        model.addAttribute("communication", communication);
        return "messagetoclient-form";
    }
    @PostMapping("/send-message/{contractId}")
    public String sendMessage(@PathVariable Long contractId, Communication communication) {
        communicationService.sendMessage(contractId, communication.getMessage());
        return "redirect:/";
    }

    @GetMapping("/delete/{contractId}")
    public String delete(@PathVariable long contractId){
        contractRepository.deleteById(contractId);
       return  "redirect:/contracts/view";
    }

}
