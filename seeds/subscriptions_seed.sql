-- subscriptions_seed.sql
-- Seed data linking customers to service packages

INSERT INTO subscriptions (customer_id, package_id, start_date, end_date, status, created_at)
VALUES
-- Residential CHIA plans
(1, 1, '2024-11-15', NULL, 'active', NOW()), -- Andi Pratama -> CHIA-20
(2, 2, '2024-12-01', NULL, 'active', NOW()), -- Rina Wulandari -> CHIA-50
(3, 1, '2024-12-10', NULL, 'active', NOW()), -- Budi Santoso -> CHIA-20
(4, 2, '2024-12-20', NULL, 'active', NOW()), -- Siti Nurhaliza -> CHIA-50
(5, 1, '2025-01-05', NULL, 'active', NOW()), -- Dewi Anggraini -> CHIA-20

-- Business CIBRA plans
(6, 3, '2024-11-25', NULL, 'active', NOW()), -- Rahmat Hidayat -> CIBRA-100
(7, 4, '2024-12-15', NULL, 'active', NOW()), -- Intan Permata -> CIBRA-200
(8, 3, '2025-01-02', NULL, 'active', NOW()), -- Eko Kurniawan -> CIBRA-100

-- Enterprise CID plans
(9, 5, '2024-12-28', NULL, 'active', NOW()), -- Nina Kartika -> CID-500
(10, 6, '2025-01-10', NULL, 'active', NOW()); -- Fajar Ramadhan -> CID-1000
