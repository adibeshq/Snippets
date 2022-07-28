### Prerequisites

Install the following packages:

```
sudo pacman -S phpmyadmin apache php php-apache mariadb
```



### MariaDB Config

```
mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
```

```
mysql_secure_installation
```



### PHP Config

```
sudo nano /etc/php/php.ini
```

1. Uncomment `extension=mysqli` and `extension=pdo_mysql`

2. Find `date.timezone` and set it to: `date.timezone = Europe/Berlin`

3. Find and set `display_errors = On`

4. Find `open_basedir` and set it to:

   ```
   open_basedir = /srv/http/:/var/www/:/home/:/tmp/:/var/tmp/:/var/cache/:/usr/share/pear/:/usr/share/webapps/:/etc/webapps/
   ```

 5. Add the following line at the bottom of `/etc/httpd/conf/httpd.conf`:

    ```
    ### PHP Configuration
    Include conf/extra/php_module.conf
    ```

    

### httpd Config

1. Create a new file:

```
sudo nano /etc/httpd/conf/extra/phpmyadmin.conf
```

2. Copy and paste this into the file:

   ```
   Alias /phpmyadmin "/usr/share/webapps/phpMyAdmin"
   <Directory "/usr/share/webapps/phpMyAdmin">
       DirectoryIndex index.php
       AllowOverride All
       Options FollowSymlinks
       Require all granted
   </Directory>
   ```

   

### Setting APACHE to use PHP (Using libphp)

```
sudo nano /etc/httpd/conf/httpd.conf
```

1. Comment the following module with #:

   ```
   #LoadModule mpm_event_module modules/mod_mpm_event.so
   ```

2. Uncomment this module:

   ```
   LoadModule mpm_prefork_module modules/mod_mpm_prefork.so
   ```

3. Just before the `<IfModule unixd_module>` add the following lines:

   ```
   LoadModule php_module modules/libphp.so
   AddHandler php-script .php
   ```

4. Add this add the end of the file:

   ```
   # phpMyAdmin configuration
   Include conf/extra/phpmyadmin.conf
   ```

5.  restart the apache `sudo systemctl restart httpd`

​	6. open `http://localhost/phpmyadmin`