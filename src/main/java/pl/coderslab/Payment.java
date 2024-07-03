package pl.coderslab;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Payment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private double paymentAmount;
    private String paymentMethod;
    private String paymentData;
    private String accountNumber;
    private String paymentType;
    @ManyToOne
    private Contract contract;

}
