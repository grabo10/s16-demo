package pl.coderslab;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Builder
public class Room {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String roomNo;
    private double size;
    private String roomEquipment;
    private String defects;
    private String damages;
    private int maxNoPeople;
    private String roomIntended;
    private int cost;
    private int deposit;
    @ManyToOne
    private RealEstate realEstate;

}
