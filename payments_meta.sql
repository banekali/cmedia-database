CREATE TABLE IF NOT EXISTS payments_meta (
  log_id INT AUTO_INCREMENT PRIMARY KEY,

  payment_id INT NOT NULL,
  action ENUM('create', 'update', 'reverse', 'delete') NOT NULL,

  old_amount DECIMAL(12,2) DEFAULT NULL,
  new_amount DECIMAL(12,2) DEFAULT NULL,

  old_method ENUM('cash', 'bank_transfer', 'credit_card', 'e_wallet') DEFAULT NULL,
  new_method ENUM('cash', 'bank_transfer', 'credit_card', 'e_wallet') DEFAULT NULL,

  changed_by_staff_id INT NULL,
  change_source ENUM('admin_panel', 'system', 'api') NOT NULL DEFAULT 'system',

  reason TEXT,
  changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

  FOREIGN KEY (payment_id) REFERENCES payments(payment_id) ON DELETE CASCADE,
  FOREIGN KEY (changed_by_staff_id) REFERENCES staff(staff_id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
