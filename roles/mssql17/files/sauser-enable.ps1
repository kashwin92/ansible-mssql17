invoke-sqlcmd -query "ALTER LOGIN sa ENABLE";  
invoke-sqlcmd -query "GO";
invoke-sqlcmd -query "ALTER LOGIN sa WITH PASSWORD = 'StrngPa$$@3'";
invoke-sqlcmd -query "GO";
