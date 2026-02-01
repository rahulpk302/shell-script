#!/bin/bash

backup_dir="/backups"
db_name="mydb"
user="postgres"

mkdir -p "backup_dir"

pg_dump -U $user $ db_name > $backup_dir/${db_name}_$(date+%F).sql
