package pl.coderslab;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface PaymentRepository extends JpaRepository<Payment,Long> {
    @Query("SELECT p FROM Payment p JOIN p.contract c WHERE c.client.id = :clientId")
    List<Payment> findPaymentsByClientId(@Param("clientId") Long clientId);
}

