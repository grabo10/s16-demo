package pl.coderslab;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("payments")
public class PaymentController {

    private final PaymentService paymentService;
    private final ContractRepository contractRepository;
    private final PaymentRepository paymentRepository;

    public PaymentController (PaymentRepository paymentRepository, ContractRepository contractRepository,PaymentService paymentService){
        this.contractRepository = contractRepository;
        this.paymentService = paymentService;
        this.paymentRepository= paymentRepository;

    }
    @GetMapping("/payment-form")
    public String showPaymentForm(Model model) {
        model.addAttribute("payment", new Payment());
        model.addAttribute("contracts", contractRepository.findAll());
        return "payment-form";
    }
    @PostMapping("/payment-form")
    public String submitClientForm(@ModelAttribute Payment payment){
        paymentRepository.save(payment);
        return "redirect:/payments/payment-form";
    }


    @GetMapping("/upload")
    public String showUploadForm(Model model) {
        return "uploadpayments";
    }

    @PostMapping("/upload")
    public String handleFileUpload(@RequestParam("file") MultipartFile file, Model model) {
        if (file.isEmpty()) {
            model.addAttribute("message", "Please select a CSV file to upload.");
            return "redirect:/payments/upload";
        }

        try {
            paymentService.addPaymentsFromCsv(file);
            model.addAttribute("message", "File uploaded successfully.");
        } catch (Exception e) {
            model.addAttribute("message", "An error occurred while processing the file: " + e.getMessage());
        }

        return "redirect:/payments/upload";
    }
}
