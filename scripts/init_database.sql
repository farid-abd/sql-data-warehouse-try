/*
==============================================================
Create Database and Schemas
==============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the scripts sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.


WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in database will permanently be deleted. Proceed with caution and ensure 
  you have proper backups before running this scripts.
*/



USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXIST (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;

USE DataWarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
