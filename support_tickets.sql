-- support_tickets.sql
-- Customer helpdesk & NOC issue tracking

CREATE TABLE support_tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    subject VARCHAR(200) NOT NULL,
    description TEXT,
    status ENUM('open','in_progress','resolved','closed') DEFAULT 'open',
    priority ENUM('low','medium','high','critical') DEFAULT 'medium',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
