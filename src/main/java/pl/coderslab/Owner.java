package pl.coderslab;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Owner {

    public Owner(Long id, String firstName,String lastName){
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String firstName;
    private String lastName;
    private String idNo;
    private String pesel;
    private String PassportNo;
    private String country;
    private String city;
    private String street;
    private String zipCode;
    private String telNumber;
    private String email;
    private Long capitalForInvestments;
    @OneToMany
    private List<RealEstate> realEstates;

    }
