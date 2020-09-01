invoke-sqlcmd -query "CREATE DATABASE testdatabase";
invoke-sqlcmd -query "GO";
invoke-sqlcmd -query "CREATE TABLE sample (lname nvarchar(25), fname nvarchar(25))";
invoke-sqlcmd -query "GO";
invoke-sqlcmd -query "INSERT INTO sample VALUES ('user', 'sample')";
invoke-sqlcmd -query "GO";
invoke-sqlcmd -query "SELECT * FROM sample";
