#!/bin/bash
# init-db.sh

# You can replace 'postgres' with any other default database that exists,
# 'template1' is also a common choice for initialization scripts.

# Connect to the default database and run your SQL commands
psql -d database -U dice_user -h localhost <<EOF
CREATE ROLE dice WITH LOGIN PASSWORD 'dice_password';
CREATE DATABASE dice_database OWNER dice_password;
EOF

# Any other initialization commands go here

# Make sure the script is executable:
# chmod +x scripts/init-db.sh
