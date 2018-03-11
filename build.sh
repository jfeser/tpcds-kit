#!/bin/sh

dropdb --if-exists tpcds1
createdb tpcds1
cd tools/
./dsdgen -dir /tmp -scale 1 -force Y -term N -rngseed 0
psql -d tpcds1 -f tpcds_load.sql
