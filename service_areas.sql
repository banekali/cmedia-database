-- Create service_areas table
DROP TABLE IF EXISTS service_areas;

CREATE TABLE service_areas (
    area_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    city VARCHAR(100) NOT NULL,
    province VARCHAR(100) NOT NULL,
    status ENUM('active', 'inactive', 'maintenance', 'retired') NOT NULL DEFAULT 'active',
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);