-- invoices.sql
-- Billing issued for subscriptions

CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    subscription_id INT NOT NULL,
    invoice_date DATE DEFAULT CURRENT_DATE,
    due_date DATE,
    amount DECIMAL(12,2) NOT NULL,
    status ENUM('unpaid','paid','overdue') DEFAULT 'unpaid',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (subscription_id) REFERENCES subscriptions(subscription_id)
);
