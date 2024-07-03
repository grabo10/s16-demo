package pl.coderslab;

import jakarta.persistence.*;
import lombok.*;
import javax.validation.constraints.*;
import java.time.LocalDate;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Contract {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NonNull
    @NotNull(message = "Please provide a start date.")
    @FutureOrPresent(message = "The start date must be today or a future date.")
    private LocalDate startData;

    @NonNull
    @NotNull(message = "Please provide an end date.")
    @FutureOrPresent(message = "The end date must be today or a future date.")
    private LocalDate endData;

    @NonNull
    @Min(value = 0, message = "The monthly cost must be a positive number.")
    private double monthlyCost;

    @Min(value = 0, message = "The deposit must be a positive number.")
    private double deposit;

    private String specialProvisions;

    @NotBlank(message = "Please provide the date of payment.")
    private String dateOfPayment;


    private String status;

    @NotBlank(message = "Please provide the contract code.")
    @Size(min = 2, message = "The contract code must be at least 2 characters long.")
    private String code;

    @ManyToOne
    @NotNull(message = "Please specify the related real estate.")
    private RealEstate realEstate;

    @ManyToOne
    @NotNull(message = "Please specify the client.")
    private Client client;
}