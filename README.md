Microsoft SQL Server 2017 Developer Edition
===========================================

mssql17
=======

Description
-----------
This ansible role will install a SQL Server Developer Edition 2017 instance on supported Windows platforms.  This role can be adjusted to install any supported SQL server installation. 

This role also handles local firewall changes as required and demonstrates how to make configuration adjustments to the SQL instance.


Role Outcome
------------
Installs MS SQL Server 2017 Database Engine Developer Edition v14.0.xxx.

Installs SQL Server Management Studio v15.0.xxx (SSMS).

Installs additional features like 'Client Tools Connectivity'.

Creates an SQL Server database instance named 'TEST'.

Enables Mixed-mode Authentication and activates 'sa' account by setting up a password for it.


Requirements
------------
The Setup file is pulled from AWS S3 in this role.

Powershell 5.0 / WMF 5.1 should be installed on target host.

This role uses Windows Active Directory Domain Services (AD DS) for the creation of SQL Server database instance.

The target Windows host must be a domain controller with an Active Directory domain. Domain used in this role is 'CONTOSO.internal'.

The Windows host must have both 'sql_svc' and 'sql_agt' Active Directory (AD) accounts/users associated with the domain as this role makes use of those accounts to create SQL Server database instance.


Author Information
------------------
Ashwin Krishnamurthi
