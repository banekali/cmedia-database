-- Create network_nodes table
CREATE TABLE IF NOT EXISTS network_nodes (
    node_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    area_id INT UNSIGNED NOT NULL,
    name VARCHAR(100) NOT NULL UNIQUE,
    type ENUM('ODC', 'ODP') NOT NULL,
    status ENUM('active', 'inactive', 'maintenance', 'retired') NOT NULL DEFAULT 'active',
    installed_at DATETIME NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_network_nodes_area
        FOREIGN KEY (area_id) REFERENCES service_areas(area_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);