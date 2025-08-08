CREATE TABLE IF NOT EXISTS support_tickets_meta (
  log_id INT AUTO_INCREMENT PRIMARY KEY,

  ticket_id INT NOT NULL,
  action ENUM('create', 'update', 'change_status', 'escalate', 'resolve', 'close', 'delete') NOT NULL,

  old_status ENUM('open', 'in_progress', 'resolved', 'closed') DEFAULT NULL,
  new_status ENUM('open', 'in_progress', 'resolved', 'closed') DEFAULT NULL,

  old_priority ENUM('low', 'medium', 'high', 'critical') DEFAULT NULL,
  new_priority ENUM('low', 'medium', 'high', 'critical') DEFAULT NULL,

  changed_by_staff_id INT NULL,
  change_source ENUM('admin_panel', 'system', 'api', 'customer_portal') NOT NULL DEFAULT 'system',

  reason TEXT,
  changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

  FOREIGN KEY (ticket_id) REFERENCES support_tickets(ticket_id) ON DELETE CASCADE,
  FOREIGN KEY (changed_by_staff_id) REFERENCES staff(staff_id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
