-- master_schema.sql
-- Master loader for CMedia database schema
-- Run this in MySQL: 
--   mysql -u root -p cmedia_db < master_schema.sql

-- ===========================
-- Core Cluster (Customers, Plans, Billing)
-- ===========================
SOURCE core/customers.sql;
SOURCE core/service_packages.sql;
SOURCE core/subscriptions.sql;
SOURCE core/invoices.sql;
SOURCE core/payments.sql;
SOURCE core/support_tickets.sql;

-- ===========================
-- Infrastructure Cluster (Network & Devices)
-- ===========================
-- SOURCE infrastructure/network_devices.sql;
-- SOURCE infrastructure/coverage_zones.sql;

-- ===========================
-- Admin & Security Cluster
-- ===========================
-- SOURCE admin/staff.sql;
-- SOURCE admin/audit_logs.sql;
-- SOURCE admin/system_settings.sql;

-- ===========================
-- Advanced / Bonus Features
-- ===========================
-- SOURCE advanced/usage_metrics.sql;
-- SOURCE advanced/partners.sql;
-- SOURCE advanced/promotions.sql;
-- SOURCE advanced/feedback_surveys.sql;

-- ===========================
-- Seeds (Optional for Dev/Test)
-- ===========================
-- SOURCE seeds/customers_seed.sql;
-- SOURCE seeds/service_packages_seed.sql;
-- SOURCE seeds/subscriptions_seed.sql;
-- SOURCE seeds/invoices_seed.sql;
-- SOURCE seeds/payments_seed.sql;
