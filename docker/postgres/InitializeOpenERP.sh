#!/usr/bin/env bash
export PGUSER=sa
echo "Running db role creation"
psql <<- EOSQL
    create ROLE tom LOGIN CREATEDB ;
    CREATE USER tom WITH ENCRYPTED PASSWORD 'tom' ROLE tom;
    CREATE DATABASE volunteer WITH OWNER tom;
    GRANT ALL PRIVILEGES ON DATABASE volunteer TO tom;
EOSQL