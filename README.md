# CMedia Database Schema

cmedia_project/
├── database/
│   ├── core/
│   │   ├── customers.sql
│   │   ├── service_areas.sql
│   │   ├── network_nodes.sql
│   │   ├── service_packages.sql
│   │   ├── subscriptions.sql
│   │   ├── invoices.sql
│   │   ├── payments.sql
│   │   └── support_tickets.sql
│   ├── seeds/
│   │   ├── customers_seed.sql
│   │   ├── service_areas_seed.sql
│   │   ├── network_nodes_seed.sql
│   │   ├── service_packages_seed.sql
│   │   ├── subscriptions_seed.sql
│   │   ├── invoices_seed.sql
│   │   ├── payments_seed.sql
│   │   └── support_tickets_seed.sql
│   ├── views/
│   │   └── [optional_view_files.sql]
│   ├── admin/
│   │   └── [future_audit_or_admin_tables.sql]
│   └── master_schema.sql
├── docs/
│   ├── README.md
│   ├── schema_map.dot
│   └── schema_map.svg
├── .gitignore
└── init/
    └── init_db.sh

The Schema Engine
mkdir -p ~/Documents/cmedia_project/{database/{core,seeds,views,admin},docs,init}

touch ~/Documents/cmedia_project/database/core/{customers.sql,service_areas.sql,network_nodes.sql,service_packages.sql,subscriptions.sql,invoices.sql,payments.sql,support_tickets.sql}

touch ~/Documents/cmedia_project/database/seeds/{customers_seed.sql,service_areas_seed.sql,network_nodes_seed.sql,service_packages_seed.sql,subscriptions_seed.sql,invoices_seed.sql,payments_seed.sql,support_tickets_seed.sql}

touch ~/Documents/cmedia_project/database/views/.keep
touch ~/Documents/cmedia_project/database/admin/.keep

touch ~/Documents/cmedia_project/database/master_schema.sql
touch ~/Documents/cmedia_project/docs/{README.md,schema_map.dot,schema_map.svg}
touch ~/Documents/cmedia_project/init/init_db.sh
touch ~/Documents/cmedia_project/.gitignore

