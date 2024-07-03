package pl.coderslab;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("clients")
public class ClientController {

    private final ClientRepository clientRepository;
    private final PaymentRepository paymentRepository;
    private final ContractRepository contractRepository;
    private final ContractService contractService;

    public ClientController(ContractService contractService, ClientRepository clientRepository, PaymentRepository paymentRepository, ContractRepository contractRepository, ContractService contractService1) {
        this.clientRepository = clientRepository;
        this.paymentRepository = paymentRepository;
        this.contractRepository = contractRepository;
        this.contractService = contractService;
    }

    @GetMapping("/client-form")
    public String showClientForm(Model model) {
        model.addAttribute("client", new Client());
        return "client-form";
    }

    @PostMapping("/client-form")
    public String submitClientForm(@ModelAttribute Client client) {
        clientRepository.save(client);

        return "redirect:/clients/client-form";
    }

    @GetMapping("/payments/{clientId}")
    public String viewPaymentsByClient(@PathVariable Long clientId, Model model) {
        List<Payment> payments = paymentRepository.findPaymentsByClientId(clientId);
        model.addAttribute("payments", payments);
        return "payment-view";
    }

    @GetMapping("contracts/{clientId}")
    public String viewContractByClient(@PathVariable Long clientId, Model model) {
        List<Contract> contracts = contractRepository.findContractByClientId(clientId);
        contractService.updateContractStatuses();
        model.addAttribute("contracts", contracts);
    return "contract-view";
    }

}

