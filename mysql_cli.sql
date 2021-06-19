-- creat user with password
CREATE USER 'someuser'@'somehost' IDENTIFIED BY 'ur_pass';

-- show users 
select user from mysql.user;

-- show current user
select current_user();

-- set new password for user 
ALTER USER 'someuser'@'somehost' IDENTIFIED BY 'new_pass';

-- rename user
RENAME USER 'someuser'@'somehost' TO 'someuser2'@'somehost';

-- delete user
DROP USER 'someuser'@'somehost';

-- give user all privileges 
GRANT ALL ON *.* TO 'someuser'@'somehost';

##################################################################

-- show tables first you hava to use that database by run :
use [name of your database];
-- then type :
show tables;

-- to show content of specifec table run :
desc [name of your table]  