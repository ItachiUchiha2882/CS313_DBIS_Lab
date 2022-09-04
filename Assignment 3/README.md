### To create a new user called ‘user’ with password = ‘password’ : 
Open MySQL as the root user, then
```sql
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'user'@'localhost';
-- GRANT ALL PRIVILEGES ON db_name.* TO 'user'@'localhost'; -- // for specific database.
-- GRANT ALL PRIVILEGES ON *.* TO 'sqluser'@'%';
FLUSH PRIVILEGES;  -- // not needed actually
```

### To delete any user in mysql :  
Open MySQL as the root user, then 
```sql
DROP USER 'user'@'localhost';
-- DROP USER 'user'@'%';  -- // If host is different.
```

### To list all users in mysql : 
Start by logging as the root user, then 
```sql
SELECT user FROM mysql.user;
```

Refer [this](https://www.youtube.com/watch?v=C0y35FpiLRA), and if getting errors go to comments of this videos, someone has given links to other videos, watch that.

Always remember that whatever database name you are adding while making connection, that should be there already in that user databases list. 
