#!/usr/bin/env bash

# obtains all data tables from database
TS=`sqlite3 db.sqlite "SELECT tbl_name FROM sqlite_master WHERE type='table' and tbl_name not like 'sqlite_%';"`

# exports each table to csv
for T in $TS; do

sqlite3 db.sqlite <<!
.headers on
.mode csv
.output $T.csv
select * from $T;
!

done
