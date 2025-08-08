-- payments_seed.sql
-- Seed data: payments for invoices

INSERT INTO payments (invoice_id, payment_date, amount, method, reference_code, created_at)
VALUES
-- Andi Pratama
(1, '2024-11-28', 250000, 'bank_transfer', 'BCA-TRX-1128', NOW()),
(2, '2024-12-30', 250000, 'e_wallet', 'OVO-DEC-30', NOW()),

-- Rina Wulandari
(4, '2024-12-03', 400000, 'credit_card', 'VISA-DEC-03', NOW()),
(5, '2025-01-03', 400000, 'bank_transfer', 'MANDIRI-JAN-03', NOW()),

-- Budi Santoso
(7, '2024-12-12', 250000, 'e_wallet', 'GOPAY-DEC-12', NOW()),

-- Siti Nurhaliza
(10, '2024-12-22', 400000, 'bank_transfer', 'BNI-DEC-22', NOW()),

-- Dewi Anggraini
(13, '2025-01-07', 250000, 'e_wallet', 'OVO-JAN-07', NOW()),

-- Rahmat Hidayat
(14, '2024-11-28', 850000, 'bank_transfer', 'BCA-NOV-28', NOW()),
(15, '2024-12-30', 850000, 'bank_transfer', 'BCA-DEC-30', NOW()),

-- Intan Permata
(17, '2024-12-18', 1500000, 'bank_transfer', 'MANDIRI-DEC-18', NOW()),
(18, '2025-01-18', 1500000, 'e_wallet', 'GOPAY-JAN-18', NOW()),

-- Eko Kurniawan
(19, '2025-01-04', 850000, 'credit_card', 'MASTERCARD-JAN-04', NOW()),

-- Nina Kartika
(20, '2025-01-02', 3500000, 'bank_transfer', 'BCA-JAN-02', NOW());
