-- invoices_seed.sql
-- Seed data: recurring monthly invoices for subscriptions

INSERT INTO invoices (subscription_id, invoice_date, due_date, amount, status, created_at)
VALUES
-- Andi Pratama (CHIA-20)
(1, '2024-11-25', '2024-12-05', 250000, 'paid', NOW()),
(1, '2024-12-25', '2025-01-05', 250000, 'paid', NOW()),
(1, '2025-01-25', '2025-02-05', 250000, 'unpaid', NOW()),

-- Rina Wulandari (CHIA-50)
(2, '2024-12-01', '2024-12-10', 400000, 'paid', NOW()),
(2, '2025-01-01', '2025-01-10', 400000, 'paid', NOW()),
(2, '2025-02-01', '2025-02-10', 400000, 'unpaid', NOW()),

-- Budi Santoso (CHIA-20)
(3, '2024-12-10', '2024-12-20', 250000, 'paid', NOW()),
(3, '2025-01-10', '2025-01-20', 250000, 'unpaid', NOW()),
(3, '2025-02-10', '2025-02-20', 250000, 'unpaid', NOW()),

-- Siti Nurhaliza (CHIA-50)
(4, '2024-12-20', '2024-12-30', 400000, 'paid', NOW()),
(4, '2025-01-20', '2025-01-30', 400000, 'unpaid', NOW()),
(4, '2025-02-20', '2025-03-02', 400000, 'unpaid', NOW()),

-- Dewi Anggraini (CHIA-20)
(5, '2025-01-05', '2025-01-15', 250000, 'paid', NOW()),

-- Rahmat Hidayat (CIBRA-100)
(6, '2024-11-25', '2024-12-05', 850000, 'paid', NOW()),
(6, '2024-12-25', '2025-01-05', 850000, 'paid', NOW()),
(6, '2025-01-25', '2025-02-05', 850000, 'unpaid', NOW()),

-- Intan Permata (CIBRA-200)
(7, '2024-12-15', '2024-12-25', 1500000, 'paid', NOW()),
(7, '2025-01-15', '2025-01-25', 1500000, 'paid', NOW()),

-- Eko Kurniawan (CIBRA-100)
(8, '2025-01-02', '2025-01-12', 850000, 'paid', NOW()),

-- Nina Kartika (CID-500)
(9, '2024-12-28', '2025-01-07', 3500000, 'paid', NOW()),
(9, '2025-01-28', '2025-02-07', 3500000, 'unpaid', NOW()),

-- Fajar Ramadhan (CID-1000)
(10, '2025-01-10', '2025-01-20', 6500000, 'overdue', NOW());
