-- service_packages.sql
-- Defines internet plans (CHIA, CIBRA, CID, etc.)

CREATE TABLE service_packages (
    package_id INT AUTO_INCREMENT PRIMARY KEY,
    package_name VARCHAR(100) NOT NULL,
    speed_mbps INT NOT NULL,
    quota_gb INT NULL,
    price DECIMAL(12,2) NOT NULL,
    sla_percent DECIMAL(5,2) DEFAULT 99.0,
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);