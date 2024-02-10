-- DROP ROLES
DROP ROLE
IF EXISTS 'read_only_classicmodels_db'@'%';

-- CHECK TO SEE IF GONE
SELECT user, SHOW_db_priv, account_locked
FROM mysql.user;

-- CREATE ROLE
CREATE ROLE
IF NOT EXISTS
'read_only_classicmodels_db', 'admin_user',
'read_only_employees_db', 'app_user';

SELECT user, SHOW_db_priv, account_locked
FROM mysql.user;
