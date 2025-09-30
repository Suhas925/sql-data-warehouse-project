/*
Create Databse & Schemas
========================

Script Purpose:
--------------
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the datase: 'bronze', 'silver', and 'gold';

WARNING:
-------
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution.
  and ensure you have proper backups before running this script.
*/



-- GO: Seperate batches when working with multiple sql statements.
-- It tells sql, first execute the completly the first command before going to the next command.

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database, if it exists already.
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DateWarehouse;
END;
GO

-- Create the 'DataWarehouse' Database.
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- create schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO




