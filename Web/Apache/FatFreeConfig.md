For configuration of the Fatfree framework:

This line should be added to the httpd config file: (Server Error problem : Rewrite Engine)
LoadModule rewrite_module modules/mod_rewrite.so

For the access denied problem please make sure that the configuation file is as what follows:

```
DocumentRoot "/home/seraj/www/amiran-backend"
<Directory "/var/www/html">
    Options -Indexes +FollowSymLinks +Includes
    AllowOverride All
    Order allow,deny
    Allow from All
    Require all granted
</Directory>
```

the .htaccess file in the project folder is like this:

Enable rewrite engine and route requests to framework

```
RewriteEngine On
```

Some servers require you to specify the `RewriteBase` directive

In such cases, it should be the path (relative to the document root)
containing this .htaccess file
```
RewriteBase /

RewriteRule ^(tmp)\/|\.ini$ - [R=404]

RewriteCond %{REQUEST_FILENAME} !-l
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule .* index.php [L,QSA]
RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization},L]
```