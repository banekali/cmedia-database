CREATE TABLE IF NOT EXISTS subscriptions_meta (
  log_id INT AUTO_INCREMENT PRIMARY KEY,

  subscription_id INT NOT NULL,
  action ENUM('create', 'update', 'suspend', 'cancel', 'reactivate') NOT NULL,

  old_status ENUM('active', 'suspended', 'cancelled') DEFAULT NULL,
  new_status ENUM('active', 'suspended', 'cancelled') DEFAULT NULL,

  changed_by_staff_id INT NULL,
  change_source ENUM('system', 'admin_panel', 'api', 'customer_portal') NOT NULL DEFAULT 'system',

  reason TEXT,
  changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

  FOREIGN KEY (subscription_id) REFERENCES subscriptions(subscription_id) ON DELETE CASCADE,
  FOREIGN KEY (changed_by_staff_id) REFERENCES staff(staff_id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
