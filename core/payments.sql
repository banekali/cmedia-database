-- payments.sql
-- Tracks payments made against invoices

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_id INT NOT NULL,
    payment_date DATE DEFAULT CURRENT_DATE,
    amount DECIMAL(12,2) NOT NULL,
    method ENUM('cash','bank_transfer','credit_card','e_wallet') DEFAULT 'bank_transfer',
    reference_code VARCHAR(100) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (invoice_id) REFERENCES invoices(invoice_id)
);
