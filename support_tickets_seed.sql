INSERT INTO support_tickets (customer_id, subject, description, status, priority, created_at, resolved_at)
VALUES
(1, 'Slow internet speed', 'Customer reports speeds dropping below 10 Mbps during evening hours.', 'resolved', 'medium', '2024-12-10 08:30:00', '2024-12-11 14:00:00'),
(2, 'Frequent disconnections', 'Connection drops every 15-20 minutes; modem rebooted but no improvement.', 'resolved', 'high', '2025-01-05 09:15:00', '2025-01-06 16:45:00'),
(4, 'No internet after storm', 'Heavy rain caused outage. ONT lights blinking red.', 'resolved', 'high', '2025-01-12 10:00:00', '2025-01-12 18:30:00'),

(3, 'Double charged for December', 'Invoice shows duplicate payment entries for Dec 2024.', 'resolved', 'medium', '2025-01-03 11:00:00', '2025-01-04 10:30:00'),
(7, 'Incorrect invoice amount', 'January bill charged Rp 1,700,000 instead of Rp 1,500,000.', 'open', 'high', '2025-02-01 14:00:00', NULL),

(5, 'Upgrade request to CHIA-50', 'Customer wants to upgrade plan from CHIA-20 to CHIA-50.', 'in_progress', 'low', '2025-01-20 13:00:00', NULL),
(8, 'Request static IP for business', 'Customer needs static IP for office CCTV access.', 'open', 'medium', '2025-02-03 09:45:00', NULL),

(9, 'CID-500 outage', 'Enterprise fiber down since midnight. NOC escalation needed.', 'resolved', 'critical', '2025-01-18 07:30:00', '2025-01-18 11:15:00'),
(10, 'Packet loss on CID-1000', 'High latency and packet loss affecting VoIP calls.', 'open', 'critical', '2025-02-04 06:50:00', NULL);
