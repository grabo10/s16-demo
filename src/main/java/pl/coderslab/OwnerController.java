package pl.coderslab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/owners")
public class OwnerController {
   private final OwnerRepository ownerRepository;
   private final RealEstateRepository realEstateRepository;


    public OwnerController(OwnerRepository ownerRepository, RealEstateRepository realEstateRepository) {
        this.ownerRepository = ownerRepository;
        this.realEstateRepository = realEstateRepository;
    }

    @GetMapping("/owner-form")
    public String showOwnerForm(Model model) {
        List<RealEstate> realEstates = realEstateRepository.findAll();
        model.addAttribute("owner", new Owner());
        model.addAttribute("realEstates", realEstateRepository.findAll());
        return "owner-form";
    }

    @PostMapping("/owner-form")
    public String submitOwnerForm(@ModelAttribute Owner owner) {
        ownerRepository.save(owner);
        return "redirect:/owners/owner-form";
    }
}
