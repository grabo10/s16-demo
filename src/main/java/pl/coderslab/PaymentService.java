package pl.coderslab;

import com.opencsv.CSVReader;
import com.opencsv.exceptions.CsvException;
import jakarta.persistence.EntityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;


import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

@Repository
@Transactional
public class PaymentService {


    private final EntityManager entityManager;

    private final ContractRepository contractRepository;

    public PaymentService(EntityManager entityManager,ContractRepository contractRepository) {
        this.entityManager = entityManager;
        this.contractRepository = contractRepository;
    }

    public void addPaymentsFromCsv(MultipartFile file) throws IOException, CsvException {
        try (CSVReader reader = new CSVReader(new InputStreamReader(file.getInputStream()))) {
            List<String[]> records = reader.readAll();
            for (String[] record : records) {
                Payment payment = new Payment();
                payment.setPaymentAmount(Double.parseDouble(record[0]));
                payment.setPaymentMethod(record[1]);
                payment.setPaymentData(record[2]);
                payment.setAccountNumber(record[3]);
                payment.setPaymentType(record[4]);

                String contractCode = record[5];
                Contract contract = contractRepository.findByCode(contractCode);
                if (contract != null) {
                    payment.setContract(contract);
                    entityManager.persist(payment);
                } else {
                    System.err.println("Contract not found for code: " + contractCode);
                }
            }
        }
    }
}