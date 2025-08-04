# CMedia Database Schema

## Folder Structure
- **core/**: Essential operational tables (customers, plans, billing, tickets).
- **infrastructure/**: Network devices and service coverage zones.
- **admin/**: Staff, audit logs, and global system settings.
- **advanced/**: Optional/bonus features (usage metrics, promotions, feedback).
- **seeds/**: Development/test data inserts (kept separate from production).

## Usage
1. Create the database in MySQL:
   ```sql
   CREATE DATABASE cmedia_db;
