### For macbook, if getting errors while connecting to mysql and apache web server in XAMPP, do following things:

1. Stop the currently running mysql server by going into system preferences and stopping it from there or you can use commands for that also.

2. For terminating the currently running apache web server run the command 
```sql
sudo apachectl stop
```

3. Now try reconnecting to the servers, it will work !!

#### Error handling for mysql connection
If unable to use the command
```sql
mysql -u root -p
```
Use 
```sql
mysql -h 127.0.0.1 -P 3306 -u root
```

### To create a new user called ‘user’ with password = ‘password’ : 
Open MySQL as the root user, then
```sql
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'user'@'localhost';
-- GRANT ALL PRIVILEGES ON db_name.* TO 'user'@'localhost'; // for specific database.
-- GRANT ALL PRIVILEGES ON *.* TO 'sqluser'@'%';
FLUSH PRIVILEGES;
```

### To delete any user in mysql :  
Open MySQL as the root user, then 
```sql
DROP USER 'user'@'localhost';
-- DROP USER 'user'@'%';  // If host is different.
```

### To list all users in mysql :
Start by logging as the root user, then
```sql
SELECT user FROM mysql.user;
```

### To show currently using database in mysql :
```sql
SELECT DATABASE();
```

Refer [this](https://www.youtube.com/watch?v=C0y35FpiLRA) to use VS-Code for SQL queries, and if getting errors go to comments of this videos, someone has given links to other videos, watch that.

Always remember that whatever database name you are adding while making connection, that should be there already in that user databases list. 
