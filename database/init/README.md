# Database for load distribution system


For init the database, you need to add 3 files:
- init-ld-database.sql - in this file you need to create a user and a database for the system
- load-ld-database.sql - in this file contains a buckup of the database, namely the creation of tables, types, etc.
- load-ld-data.sql -  this file contains all the data that is in the database backup


```text
init/
├── 011-init-ld-database.sql
├── 012-load-ld-database.sql
├── 013-load-ld-data.sql
└── README.md
```
