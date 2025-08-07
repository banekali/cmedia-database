CREATE TABLE IF NOT EXISTS maintenance_logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    technician_id INT NOT NULL,
    node_id INT NULL,
    equipment_id INT NULL,
    description TEXT NOT NULL,
    maintenance_date DATETIME NOT NULL,
    duration_minutes INT NOT NULL,
    FOREIGN KEY (technician_id) REFERENCES technicians(technician_id) ON DELETE CASCADE,
    FOREIGN KEY (node_id) REFERENCES network_nodes(node_id) ON DELETE SET NULL,
    FOREIGN KEY (equipment_id) REFERENCES equipment(equipment_id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
