CREATE TABLE IF NOT EXISTS technicians (
    technician_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    assigned_area_id INT,
    status ENUM('available','on_call','off_duty') NOT NULL DEFAULT 'available',
    FOREIGN KEY (assigned_area_id) REFERENCES service_areas(area_id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
