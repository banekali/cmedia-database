-- customers_seed.sql
-- Seed data for customers (Pekanbaru, Riau)

INSERT INTO customers (full_name, email, phone, address, city, province, postal_code, created_at)
VALUES 
('Andi Pratama', 'andi.pratama@example.com', '+62 812-3456-7890', 'Jl. Sudirman No. 45', 'Pekanbaru', 'Riau', '28112', NOW()),
('Rina Wulandari', 'rina.wulandari@example.com', '+62 812-9876-5432', 'Jl. Hang Tuah No. 23', 'Pekanbaru', 'Riau', '28126', NOW()),
('Budi Santoso', 'budi.santoso@example.com', '+62 813-1111-2222', 'Jl. Riau No. 12', 'Pekanbaru', 'Riau', '28114', NOW()),
('Siti Nurhaliza', 'siti.nurhaliza@example.com', '+62 815-6789-4321', 'Jl. Arifin Ahmad No. 78', 'Pekanbaru', 'Riau', '28116', NOW()),
('Dewi Anggraini', 'dewi.anggraini@example.com', '+62 812-5566-7788', 'Jl. Tuanku Tambusai No. 34', 'Pekanbaru', 'Riau', '28124', NOW()),
('Rahmat Hidayat', 'rahmat.hidayat@example.com', '+62 812-9999-8888', 'Jl. Ahmad Yani No. 9', 'Pekanbaru', 'Riau', '28117', NOW()),
('Intan Permata', 'intan.permata@example.com', '+62 813-2222-3333', 'Jl. Pattimura No. 66', 'Pekanbaru', 'Riau', '28125', NOW()),
('Eko Kurniawan', 'eko.kurniawan@example.com', '+62 814-4444-5555', 'Jl. Imam Munandar No. 88', 'Pekanbaru', 'Riau', '28121', NOW()),
('Nina Kartika', 'nina.kartika@example.com', '+62 815-1234-5678', 'Jl. Melati No. 17', 'Pekanbaru', 'Riau', '28128', NOW()),
('Fajar Ramadhan', 'fajar.ramadhan@example.com', '+62 816-5678-9012', 'Jl. Garuda No. 5', 'Pekanbaru', 'Riau', '28120', NOW());
