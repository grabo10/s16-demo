package pl.coderslab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("realestates")
public class RealEstateController {

    private final RealEstateRepository realEstateRepository;
    private  final ClientRepository clientRepository;


    public RealEstateController(RealEstateRepository realEstateRepository, ClientRepository clientRepository){
        this.realEstateRepository = realEstateRepository;
        this.clientRepository = clientRepository;
    }
    @GetMapping("/view")
    public String viewRealEstate(Model model){
        model.addAttribute("realestates", realEstateRepository.findAll());
        return "realestate-viewall";
    }


    @GetMapping("/realestate-form")
    public String showRealEstateForm(Model model) {
        model.addAttribute("realEstate", new RealEstate());
        return "realestate-form";
    }

    @PostMapping("/realestate-form")
    public String submitRealEstateForm(@ModelAttribute RealEstate realEstate) {
       realEstateRepository.save(realEstate);
        return "redirect:/realestates/realestate-form";
    }
    @GetMapping("/clients/{realEstateId}")
    public String viewClientsByRealEstate(@PathVariable Long realEstateId, Model model) {
        List<Client> clients = clientRepository.findClientsByRealEstateId(realEstateId);
        model.addAttribute("clients", clients);
        return "clients-view";
}


}
