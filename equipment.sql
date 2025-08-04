CREATE TABLE IF NOT EXISTS equipment (
    equipment_id INT AUTO_INCREMENT PRIMARY KEY,
    node_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    serial_number VARCHAR(100) UNIQUE NOT NULL,
    type ENUM('Router','Switch','ONT','Fiber Splitter','Server') NOT NULL,
    status ENUM('active','faulty','retired') NOT NULL DEFAULT 'active',
    installed_at DATETIME NOT NULL,
    last_maintenance DATETIME NULL,
    FOREIGN KEY (node_id) REFERENCES network_nodes(node_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
