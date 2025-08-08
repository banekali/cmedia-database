CREATE TABLE IF NOT EXISTS customers_meta (
  log_id INT AUTO_INCREMENT PRIMARY KEY,

  customer_id INT NOT NULL,
  action ENUM('create', 'update', 'deactivate', 'reactivate', 'delete') NOT NULL,

  changed_by_staff_id INT NULL,
  change_source ENUM('system', 'admin_panel', 'api') NOT NULL DEFAULT 'system',

  reason TEXT,
  changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

  FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
  FOREIGN KEY (changed_by_staff_id) REFERENCES staff(staff_id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
