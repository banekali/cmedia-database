CREATE TABLE IF NOT EXISTS network_nodes (
    node_id INT AUTO_INCREMENT PRIMARY KEY,
    area_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    type ENUM('ODC','ODP','POP','Tower') NOT NULL,
    status ENUM('active','maintenance','offline') NOT NULL DEFAULT 'active',
    installed_at DATETIME NOT NULL,
    FOREIGN KEY (area_id) REFERENCES service_areas(area_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
