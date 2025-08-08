-- service_packages_seed.sql
-- Seed data for internet service packages (CHIA, CIBRA, CID tiers)

INSERT INTO service_packages (package_name, speed_mbps, quota_gb, price, sla_percent, description, is_active, created_at)
VALUES
-- CHIA: Entry-level residential plans
('CHIA-20', 20, NULL, 250000, 98.0, 'Basic residential internet plan (up to 20 Mbps)', TRUE, NOW()),
('CHIA-50', 50, NULL, 400000, 98.0, 'Mid-tier residential plan (up to 50 Mbps)', TRUE, NOW()),

-- CIBRA: Business-grade plans with higher SLA
('CIBRA-100', 100, NULL, 850000, 99.0, 'Business-grade plan (100 Mbps, higher reliability)', TRUE, NOW()),
('CIBRA-200', 200, NULL, 1500000, 99.0, 'Business-grade plan (200 Mbps, suitable for SMEs)', TRUE, NOW()),

-- CID: Dedicated enterprise fiber (premium SLA, no quota)
('CID-500', 500, NULL, 3500000, 99.9, 'Dedicated fiber (500 Mbps, enterprise-grade SLA)', TRUE, NOW()),
('CID-1000', 1000, NULL, 6500000, 99.9, 'Dedicated fiber (1 Gbps, high-priority NOC support)', TRUE, NOW());
