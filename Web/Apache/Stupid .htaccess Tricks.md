♦ Posted by [Jeff Starr](https://perishablepress.com/author/perish/) in [.htaccess](https://perishablepress.com/category/web-design/htaccess/), [WordPress](https://perishablepress.com/category/wordpress/)

UPDATED AUGUST 22, 2020 • [84 COMMENTS](https://perishablepress.com/stupid-htaccess-tricks/#comments)

Welcome to [Perishable Press](https://perishablepress.com/)! This article, [Stupid .htaccess Tricks](https://perishablepress.com/stupid-htaccess-tricks/), covers just about every .htaccess “trick” in the book, and easily is the site’s most popular resource. I hope that you find it useful, and either way thank you for visiting :)

In addition to this tutorial, you also may want to explore the growing [.htaccess archive](https://perishablepress.com/category/htaccess/). Along with [all things .htaccess](https://htaccessbook.com/), Perishable Press also focuses on [HTML](https://perishablepress.com/category/html/), [CSS](https://perishablepress.com/category/css/), [PHP](https://perishablepress.com/category/php/), [JavaScript](https://perishablepress.com/category/javascript/), [security](https://perishablepress.com/category/security/), and just about every other aspect of web design, blogging, and online success. If these topics are of interest to you, I encourage you to [subscribe to Perishable Press](https://perishablepress.com/feed/) for a periodic dose of online enlightenment ;)



**Crazy .htaccess skills!** Check out my book [.htaccess made easy](https://htaccessbook.com/). Learn how to optimize your site’s performance, security, usability, and everything in between.

## Table of Contents

- **General**
  1. [.htaccess definition](https://perishablepress.com/stupid-htaccess-tricks/#gen1)
  2. [.htaccess comments](https://perishablepress.com/stupid-htaccess-tricks/#gen2)
  3. [Important information](https://perishablepress.com/stupid-htaccess-tricks/#gen3)
  4. [Performance issues](https://perishablepress.com/stupid-htaccess-tricks/#gen4)
  5. [Regex character definitions](https://perishablepress.com/stupid-htaccess-tricks/#gen5)
  6. [Redirection header codes](https://perishablepress.com/stupid-htaccess-tricks/#gen6)
- **Essentials**
  1. [.htaccess comments](https://perishablepress.com/stupid-htaccess-tricks/#ess1)
  2. [Enable basic rewriting](https://perishablepress.com/stupid-htaccess-tricks/#ess2)
  3. [Enable symbolic links](https://perishablepress.com/stupid-htaccess-tricks/#ess3)
  4. [Enable `AllowOverride`](https://perishablepress.com/stupid-htaccess-tricks/#ess4)
  5. [Rename the .htaccess file](https://perishablepress.com/stupid-htaccess-tricks/#ess5)
  6. [Retain httpd.conf rules](https://perishablepress.com/stupid-htaccess-tricks/#ess6)
- **Performance**
  1. [Disable `AllowOverride`](https://perishablepress.com/stupid-htaccess-tricks/#per1)
  2. [Pass the character set](https://perishablepress.com/stupid-htaccess-tricks/#per2)
  3. [Preserve bandwidth](https://perishablepress.com/stupid-htaccess-tricks/#per3)
  4. [Disable the server signature](https://perishablepress.com/stupid-htaccess-tricks/#per4)
  5. [Set the server timezone](https://perishablepress.com/stupid-htaccess-tricks/#per5)
  6. [Set admin email address](https://perishablepress.com/stupid-htaccess-tricks/#per6)
  7. [Enable file caching](https://perishablepress.com/stupid-htaccess-tricks/#per7)
  8. [Set default language & character set](https://perishablepress.com/stupid-htaccess-tricks/#per8)
  9. [Declare specific/additional MIME types](https://perishablepress.com/stupid-htaccess-tricks/#per9)
  10. [Send headers without meta tags](https://perishablepress.com/stupid-htaccess-tricks/#per10)
  11. [Limit request methods to GET/PUT](https://perishablepress.com/stupid-htaccess-tricks/#per11)
  12. [Process files based on request method](https://perishablepress.com/stupid-htaccess-tricks/#per12)
  13. [Execute various file types via CGI script](https://perishablepress.com/stupid-htaccess-tricks/#per13)
- **Security**
  1. [Prevent access to .htaccess](https://perishablepress.com/stupid-htaccess-tricks/#sec1)
  2. [Prevent access to any file](https://perishablepress.com/stupid-htaccess-tricks/#sec2)
  3. [Prevent access to multiple file types](https://perishablepress.com/stupid-htaccess-tricks/#sec2a)
  4. [Prevent unauthorized directory browsing](https://perishablepress.com/stupid-htaccess-tricks/#sec3)
  5. [Change the default index page](https://perishablepress.com/stupid-htaccess-tricks/#sec4)
  6. [Disguise script extensions](https://perishablepress.com/stupid-htaccess-tricks/#sec5)
  7. [Limit access to the LAN](https://perishablepress.com/stupid-htaccess-tricks/#sec6)
  8. [Secure directories by IP or domain](https://perishablepress.com/stupid-htaccess-tricks/#sec7)
  9. [Deny/allow domain access for IP range](https://perishablepress.com/stupid-htaccess-tricks/#sec7a)
  10. [Deny/allow multiple IP addresses on one line](https://perishablepress.com/stupid-htaccess-tricks/#sec7b)
  11. [Miscellaneous rules for blocking/allowing](https://perishablepress.com/stupid-htaccess-tricks/#sec7c)
  12. [Stop hotlinking, serve alternate content](https://perishablepress.com/stupid-htaccess-tricks/#sec8)
  13. [Block robots, rippers, and offline browsers](https://perishablepress.com/stupid-htaccess-tricks/#sec9)
  14. [More stupid blocking tricks](https://perishablepress.com/stupid-htaccess-tricks/#sec10)
  15. [Even more scum-blocking tricks](https://perishablepress.com/stupid-htaccess-tricks/#sec11)
  16. [Password-protect directories](https://perishablepress.com/stupid-htaccess-tricks/#sec12)
  17. [Password-protect files, directories, and more](https://perishablepress.com/stupid-htaccess-tricks/#sec12a)
  18. [Require SSL (secure sockets layer)](https://perishablepress.com/stupid-htaccess-tricks/#sec13)
  19. [Automatically CHMOD various file types](https://perishablepress.com/stupid-htaccess-tricks/#sec14)
  20. [Disguise all file extensions](https://perishablepress.com/stupid-htaccess-tricks/#sec15)
  21. [Limit file upload size](https://perishablepress.com/stupid-htaccess-tricks/#sec16)
  22. [Disable script execution](https://perishablepress.com/stupid-htaccess-tricks/#sec17)
- **Usability**
  1. [Minimize CSS image flicker in IE6](https://perishablepress.com/stupid-htaccess-tricks/#usa1)
  2. [Deploy custom error pages](https://perishablepress.com/stupid-htaccess-tricks/#usa2)
  3. [Provide a universal error document](https://perishablepress.com/stupid-htaccess-tricks/#usa2a)
  4. [Employ basic URL spelling check](https://perishablepress.com/stupid-htaccess-tricks/#usa3)
  5. [Force media downloads](https://perishablepress.com/stupid-htaccess-tricks/#usa4)
  6. [Display source code for dynamic files](https://perishablepress.com/stupid-htaccess-tricks/#usa5)
  7. [Redirect visitors during site development](https://perishablepress.com/stupid-htaccess-tricks/#usa6)
  8. [Provide password-prompt during site development](https://perishablepress.com/stupid-htaccess-tricks/#usa7)
  9. [Prevent access during specified time periods](https://perishablepress.com/stupid-htaccess-tricks/#usa8)
- **Redirects**
  1. [Important note about redirecting via `mod_rewrite`](https://perishablepress.com/stupid-htaccess-tricks/#red1)
  2. [Redirect from “www” domain to “non-www” domain](https://perishablepress.com/stupid-htaccess-tricks/#red2)
  3. [Redirect from an old domain to a new domain](https://perishablepress.com/stupid-htaccess-tricks/#red3)
  4. [Redirect string variations to a specific address](https://perishablepress.com/stupid-htaccess-tricks/#red4)
  5. [Other fantastic redirect tricks](https://perishablepress.com/stupid-htaccess-tricks/#red5)
  6. [Send visitors to a subdomain](https://perishablepress.com/stupid-htaccess-tricks/#red6)
  7. [More fun with RewriteCond & RewriteRule](https://perishablepress.com/stupid-htaccess-tricks/#red7)
  8. [More fun with Redirect & RedirectMatch](https://perishablepress.com/stupid-htaccess-tricks/#red8)
- **WordPress**
  1. [Secure WordPress contact forms](https://perishablepress.com/stupid-htaccess-tricks/#wor1)
  2. [WordPress permalinks](https://perishablepress.com/stupid-htaccess-tricks/#wor2)
- **Random**
  1. [Activate SSI for HTML/SHTML file types](https://perishablepress.com/stupid-htaccess-tricks/#ran1)
  2. [Grant CGI access in a specific directory](https://perishablepress.com/stupid-htaccess-tricks/#ran2)
  3. [Disable `magic_quotes_gpc` for PHP enabled servers](https://perishablepress.com/stupid-htaccess-tricks/#ran3)
  4. [Enable MD5 digests](https://perishablepress.com/stupid-htaccess-tricks/#ran4)
  5. [Expression engine tricks](https://perishablepress.com/stupid-htaccess-tricks/#ran5)
- [**Resources**](https://perishablepress.com/stupid-htaccess-tricks/#resources)

## General Information [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

**Note:** for a simpler version of this article, check out [Useful .htaccess rules for all websites](https://htaccessbook.com/useful-htaccess-rules/). Not nearly as many techniques, but a good starting point if you’re short on time, or just want something to get your feet wet with .htaccess.

### .htaccess Definition [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Apache server software provides distributed (i.e., directory-level) configuration via *Hypertext Access* files. These [.htaccess](https://httpd.apache.org/docs/current/howto/htaccess.html) files enable the localized fine-tuning of Apache’s universal system-configuration directives, which are defined in Apache’s main configuration file. The localized .htaccess directives must operate from within a file named .htaccess. The user must have appropriate file permissions to access and/or edit the .htaccess file.

Further, .htaccess file permissions should never allow world write access — a secure permissions setting is “644”, which allows universal read access and user-only write access. Finally, .htaccess rules apply to the parent directory and all subdirectories. Thus to apply configuration rules to an entire website, place the .htaccess file in the site’s root directory.

### Commenting .htaccess Code [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Comments are essential to maintaining control over any involved portion of code. Comments in .htaccess code are fashioned on a per-line basis, with each line of comments beginning with a pound sign `#`. Thus, comments spanning multiple lines in the .htaccess file require multiple pound signs.

Further, due to the extremely volatile nature of .htaccess voodoo, it is wise to include only alphanumeric characters (and perhaps a few dashes and underscores) in any .htaccess comments. For more information, check out my tutorial [commenting your .htaccess code](https://htaccessbook.com/commenting-your-htaccess-code/).

### Important Notes for .htaccess Noobs [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

As a configuration file, .htaccess is very powerful. Even the slightest syntax error (like a missing space) can result in severe server malfunction. Thus it is crucial to make backup copies of *everything* related to your site (including any original .htaccess files) *before* working with your Hypertext Access file(s). It is also important to check your entire website thoroughly after making any changes to your .htaccess file. If any errors or other problems are encountered, employ your backups immediately to restore original functionality.

Also note that, on most machines, .htaccess files are hidden by default. For more information, check out my tutorial, [Create .htaccess files on OS X and Windows](https://wp-mix.com/create-htaccess-files-osx-windows/).

### Performance Issues [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

.htaccess directives provide directory-level configuration without requiring access to Apache’s main server cofiguration file (`httpd.conf`). However, due to performance and security concerns, the main configuration file should always be used for server directives whenever possible.

For example, when a server is configured to process .htaccess directives, Apache must search every directory within the domain and load any and all .htaccess files upon every document request. This results in increased page processing time and thus decreases performance. Such a performance hit may be unnoticeable for sites with light traffic, but becomes a more serious issue for more popular websites.

Therefore, .htaccess files should only be used when the main server configuration file is inaccessible. See the [Performance Tricks](https://perishablepress.com/stupid-htaccess-tricks/#performance) section of this article for more information.

### Regex Character Definitions for .htaccess [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Get this information in PDF format! Visit [.htaccess Character Definitions](https://htaccessbook.com/htaccess-character-definitions/) for free download.

- #

  The `#` instructs the server to ignore the line. used for including comments. each line of comments requires it’s own `#`. when including comments, it is good practice to use only letters, numbers, dashes, and underscores. this practice will help eliminate/avoid potential server parsing errors.

- [F]

  Forbidden: instructs the server to return a 403 “Forbidden” response to the client.

- [L]

  Last rule: instructs the server to stop rewriting after the preceding directive is processed.

- [N]

  Next: instructs Apache to rerun the rewrite rule until all rewriting directives have been achieved.

- [G]

  Gone: instructs the server to deliver a 410 “Gone” response (indicating that the resource no longer exists.

- [P]

  Proxy: instructs server to handle requests by `mod_proxy`.

- [C]

  Chain: instructs server to chain the current rule with the previous rule.

- [R]

  Redirect: instructs Apache to issue a redirect, causing the client to request the new content.

- [NC]

  No Case: defines any associated argument as case-insensitive. That is, “NC” = “No Case”.

- [PT]

  Pass Through: instructs `mod_rewrite` to pass the rewritten URL back to Apache for further processing.

- [OR]

  Or: specifies a logical “or” that ties two expressions together such that either one proving true will cause the associated rule to be applied.

- [NE]

  No Escape: instructs the server to parse output without escaping characters.

- [NS]

  No Subrequest: instructs the server to skip the directive if internal sub-request.

- [QSA]

  Append Query String: directs server to add the query string to the end of the expression (URL).

- [S=x]

  Skip: instructs the server to skip the next “x” number of rules if a match is detected.

- [E=variable:value]

  Environmental Variable: instructs the server to set the environmental variable “variable” to “value”.

- [T=MIME-type]

  Mime Type: declares the mime type of the target resource.

- []

  Specifies a character class, in which any character within the brackets will be a match. For example, `[xyz]` will match either an “x”, “y”, or “z”.

- []+

  Character class in which any combination of items within the brackets will be a match. For example, `[xyz]+` will match any number of “x”, “y”, “z”, or any combination of these characters.

- [^]

  Specifies *not* within a character class. For example, `[^xyz]` will match any character that is neither “x”, “y”, nor “z”.

- [a-z]

  A dash (`-`) between two characters within a character class (`[]`) denotes the range of characters between them. For example, `[a-zA-Z]` matches all lowercase and uppercase letters from “a” thru “z”.

- a{n}

  Specifies an exact number, `n`, of the preceding character. For example, `x{3}` matches “x” exactly three times.

- a{n,}

  Specifies `n` or more of the preceding character. For example, `x{3,}` matches “x” three or more times.

- a{n,m}

  Specifies a range of numbers, between `n` and `m`, of the preceding character. For example, `x{3,7}` matches “x” three, four, five, six, or seven times.

- ()

  Used to group characters together, thereby considering them as a single unit. For example, `(perishable)?press` will match “press”, with or without the “perishable” prefix.

- ^

  Denotes the beginning of a regex (regex = regular expression) test string. That is, begin argument with the proceeding character.

- $

  Denotes the end of a regex (regex = regular expression) test string. That is, end argument with the previous character.

- ?

  Declares as optional the preceding character. For example, `monzas?` will match “monza” or “monzas”, while `mon(za)?` will match either “mon” or “monza”. That is, `x?` matches “x” zero or one times.

- !

  Declares negation. For example, `!string` matches everything except string.

- .

  A dot (or period) indicates any single arbitrary character.

- –

  Instructs “not to” rewrite the URL, as in `(.*) - [F]`.

- +

  Matches one or more of the preceding character. For example, `G+` matches “G” one or more times.

- *

  Matches zero or more of the preceding character. For example, you can use `.*` as a wildcard to match anything (or nothing).

- |

  Declares a logical “or” operator. For example, `(x|y)` matches “x” or “y”.

- \

  Escapes special characters ( `^` `$` `!` `.` `*` `|` ). For example, use `\.` to indicate/escape a literal dot.

- \.

  Indicates a literal dot (escaped).

- /*

  Zero or more slashes.

- .*

  Zero or more arbitrary characters.

- ^$

  Defines an empty string.

- .*

  The standard pattern for matching everything (or nothing).

- [^/.]

  Defines one character that is neither a slash nor a dot.

- [^/.]+

  Defines any number of characters which contains neither slash nor dot.

- http://

  This is a literal statement — in this case, the literal character string, `http://`.

- ^domain.*

  Defines a string that begins with the term “domain”, which then may be proceeded by any number of any characters.

- ^domain\.com$

  Defines the exact string, “domain.com”.

- -d

  Tests if string is an existing directory.

- -f

  Tests if string is an existing file.

- -s

  Tests if file in test string has a non-zero value.

### Redirection Header Codes [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

- 301 – Moved Permanently
- 302 – Moved Temporarily
- 403 – Forbidden
- 404 – Not Found
- 410 – Gone

## Essentials [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

### Commenting your .htaccess Files [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

It is an excellent idea to consistenly and logically comment your .htaccess files. Any line in an .htaccess file that begins with the pound sign ( `#` ) tells the server to ignore it. Multiple lines require multiple pounds and use letters/numbers/dash/underscore only:

```
# this is a comment
# each line must have its own pound sign
# use only alphanumeric characters along with dashes - and underscores _
```

For more information, check out [commenting your .htaccess code](https://htaccessbook.com/commenting-your-htaccess-code/).

### Enable Basic Rewriting [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Certain servers may not have [mod_rewrite](https://httpd.apache.org/docs/current/mod/mod_rewrite.html) (basic rewriting) enabled by default. To ensure [mod_rewrite](https://perishablepress.com/tag/mod_rewrite/) is enabled throughout your site, add the following line once to your site’s root .htaccess file (located before any rewrite rules):

```
# enable mod_rewrite
RewriteEngine on
```

### Enable Symbolic Links [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Enable symbolic links (symlinks) by adding the following directive to the target directory’s .htaccess file. Note: for the `FollowSymLinks` directive to function, `AllowOverride Options` privileges must be enabled from within the server configuration file ([see next section for more information](https://perishablepress.com/stupid-htaccess-tricks/#ess4)):

```
# enable symbolic links
Options +FollowSymLinks
```

### Enable AllowOverride [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

For directives that require `AllowOverride` in order to function, such as `FollowSymLinks` (see [previous section](https://perishablepress.com/stupid-htaccess-tricks/#ess3)), the following directive must be added to the server configuration file. For performance considerations, it is important to only enable `AllowOverride` in the specific directory or directories in which it is required. In the following code chunk, we are enabling the `AllowOverride` privileges only in the specified directory:

```
/www/replace/this/with/actual/directory
```

So to enable `AllowOverride` for this directory:

```
# enable allowoverride privileges
<Directory /www/replace/this/with/actual/directory>
	AllowOverride Options
</Directory>
```

Refer to [this section](https://perishablepress.com/stupid-htaccess-tricks/#per1) for more information about `AllowOverride` and performance enhancement.

### Rename the .htaccess File [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Not every system enjoys the extension-only format of .htaccess files. Fortunately, you can rename them to whatever you wish, granted the name is valid on your system. Note: This directive must be placed in the server-wide configuration file or it will not work:

```
# rename .htaccess files
AccessFileName ht.access
```

Note: If you rename your .htaccess files, remember to update any associated configuration settings. For example, if you are [protecting your .htaccess file](https://htaccessbook.com/protect-htaccess-files/) via `FilesMatch`, remember to inform it of the renamed files:

```
# protect renamed .htaccess files
<FilesMatch "^ht\.">
	Order deny,allow
	Deny from all
</FilesMatch>
```

Check out the [Security section](https://perishablepress.com/stupid-htaccess-tricks/#security) for more information about protecting files.

### Retain Rules Defined in httpd.conf [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Save yourself time and effort by defining replicate rules for multiple virtual hosts once and only once via your `httpd.conf` file. Then, simply instruct your target .htaccess file(s) to inherit the `httpd.conf` rules by including this directive:

```
# inherit rules from httpd.conf
RewriteOptions Inherit
```

## Performance [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

### Improving Performance via AllowOverride [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Limit the extent to which .htaccess files decrease performance by enabling `AllowOverride` only in required directories. For example, if `AllowOverride` is enabled throughout the entire site, the server must dig through every directory, searching for .htaccess files that may not even exist. To prevent this, we disable the `AllowOverride` in the site’s root .htaccess file and then enable `AllowOverride` only in required directories via the server config file (refer to [this section](https://perishablepress.com/stupid-htaccess-tricks/#ess4) for more information).

**Note:** if you do not have access to your site’s server config file and also need `AllowOverride` privileges, do **not** use this directive.

```
# increase performance by disabling AllowOverride
AllowOverride None
```

### Improving Performance by Passing the Character Set [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Prevent display errors by specifying the default character set:

```
# pass the default character set
AddDefaultCharset utf-8
```

Note: replace the `utf-8` with the charset that your site is using.

### Improving Performance by Preserving Bandwidth [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

To increase performance on PHP enabled servers, add the following directive:

```
# preserve bandwidth for PHP enabled servers
<ifmodule mod_php4.c>
	php_value zlib.output_compression 16386
</ifmodule>
```

### Disable the Server Signature [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Here we are disabling the digital signature that would otherwise identify the server:

```
# disable the server signature
ServerSignature Off
```

### Set the Server Timezone [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Here we are instructing the server to synchronize chronologically according to the time zone of the specified state:

```
# set the server timezone
SetEnv TZ America/Washington
```

Check out the official [list of supported timezones](https://www.php.net/manual/en/timezones.php).

### Set the Email Address for the Server Administrator [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Here we are specifying the default email address for the server administrator:

```
# set the server administrator email
SetEnv SERVER_ADMIN default@example.com
```

Note: only specify your email address if you are okay with getting lots of spam ;)

### Improve Site Transfer Speed by Enabling File Caching [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Dude over at [askapache.com](https://www.askapache.com/) explains how to dramatically improve your site’s transfer speed by enabling file caching. Using time in seconds (see [conversion chart](https://perishablepress.com/stupid-htaccess-tricks/#time-conversion)) to indicate the duration for which cached content should endure, we may generalize the necessary .htaccess rules as follows (edit file types and time value to suit your needs):

```
# cache images and flash content for one month
<FilesMatch ".(flv|gif|jpg|jpeg|png|ico|swf)$">
	Header set Cache-Control "max-age=2592000"
</FilesMatch>
# cache text, css, and javascript files for one week
<FilesMatch ".(js|css|pdf|txt)$">
	Header set Cache-Control "max-age=604800"
</FilesMatch>
# cache html and htm files for one day
<FilesMatch ".(html|htm)$">
	Header set Cache-Control "max-age=43200"
</FilesMatch>
# implement minimal caching during site development
<FilesMatch "\.(flv|gif|jpg|jpeg|png|ico|js|css|pdf|swf|html|htm|txt)$">
	Header set Cache-Control "max-age=5"
</FilesMatch>
# explicitly disable caching for scripts and other dynamic files
<FilesMatch "\.(pl|php|cgi|spl|scgi|fcgi)$">
	Header unset Cache-Control
</FilesMatch>
# alternate method for file caching
ExpiresActive On
ExpiresDefault A604800
ExpiresByType image/x-icon A2419200
ExpiresByType application/x-javascript A2419200
ExpiresByType text/css A2419200
ExpiresByType text/html A300
# disable caching for scripts and other dynamic files
<FilesMatch "\.(pl|php|cgi|spl|scgi|fcgi)$">
	ExpiresActive Off
</FilesMatch>
```

For more information, check out [Additional file-types for mod_expires](https://wp-mix.com/mod-expires-file-types/).

#### Time Conversion Chart

Convert common time intervals into seconds:

```
300      = 5 minutes
2700     = 45 minutes
3600     = 1 hour
54000    = 15 hours
86400    = 1 day
518400   = 6 days
604800   = 1 week
1814400  = 3 weeks
2419200  = 1 month
26611200 = 11 months
29030400 = 1 year
```

### Set the default language and character set [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Here is an easy way to set the default language for pages served by your server (edit the language to suit your needs):

```
# set the default language
DefaultLanguage en-US
```

Likewise, here we are setting the default character set (edit to taste):

```
# set the default character set
AddDefaultCharset UTF-8
```

### Declare specific/additional MIME types [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

```
# add various mime types
AddType application/x-shockwave-flash .swf
AddType video/x-flv .flv
AddType image/x-icon .ico
```

### Send character set and other headers without meta tags [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

```
# send the language tag and default character set
# AddType 'text/html; charset=UTF-8' html
AddDefaultCharset UTF-8
DefaultLanguage en-US
```

### Limit server request methods to GET and PUT [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

```
# limit server request methods to GET and PUT
Options -ExecCGI -Indexes -All
RewriteEngine on
RewriteCond %{REQUEST_METHOD} ^(TRACE|TRACK|OPTIONS|HEAD) RewriteRule .* - [F]
```

Learn more about [Controlling Request Methods](https://htaccessbook.com/control-request-methods/).

### Process files based on request method [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

```
# process files according to server request method
Script PUT /cgi-bin/upload.cgi
Script GET /cgi-bin/download.cgi
```

### Execute various file types through a cgi script [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

For those special occasions where certain file types need to be processed with some specific cgi script, let em know who sent ya:

```
# execute all png files via png-script.cgi
Action image/png /cgi-bin/png-script.cgi
```

## Security [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

### Prevent Access to .htaccess [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Add the following code block to your .htaccess file to add an extra layer of security. Any attempts to access the .htaccess file will result in a 403 “Forbidden” response. [Learn more](https://htaccessbook.com/protect-htaccess-files/).

```
# secure .htaccess file
<Files .htaccess>
	Order allow,deny
	Deny from all
</Files>
```

Of course, your first layer of defense to protect .htaccess (and other sensitive) files involves setting the file permissions via CHMOD to be as restrictive as possible. If ever in doubt, ask your web host for help.

### Prevent Access to a Specific File [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

To restrict access to a specific file, add the following code block and edit the file name, `secretfile.jpg`, with the name of the file that you wish to protect:

```
# prevent viewing of a specific file
<files secretfile.jpg>
	Order allow,deny
	Deny from all
</files>
```

For further infos, check out [Protect files with .htaccess](https://wp-mix.com/protect-files-htaccess/).

### Prevent access to multiple file types [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

To restrict access to a variety of file types, add the following code block and edit the file types within parentheses to match the extensions of any files that you wish to protect:

```
<FilesMatch "\.(htaccess|htpasswd|ini|phps|fla|psd|log|sh)$">
	Order Allow,Deny
	Deny from all
</FilesMatch>
```

For further infos, check out [Protect files with .htaccess](https://wp-mix.com/protect-files-htaccess/).

### Prevent Unauthorized Directory Browsing [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Prevent unauthorized directory browsing by instructing the server to serve a 403 “Forbidden” response for any request to view a directory. For example, if your site is missing its default index page, everything within the root of your site will be accessible to all visitors. To prevent this, include the following .htaccess rule:

```
# disable directory browsing
Options All -Indexes
```

Conversely, to enable directory browsing, use the following directive:

```
# enable directory browsing
Options All +Indexes
```

Likewise, this rule will prevent the server from listing directory contents:

```
# prevent folder listing
IndexIgnore *
```

And, finally, the `IndexIgnore` directive may be used to prevent the display of select file types:

```
# prevent display of select file types
IndexIgnore *.wmv *.mp4 *.avi *.etc
```

For more information, check out [What is Options All?](https://htaccessbook.com/what-is-options-all/) and [Better Default Directory Views with HTAccess](https://perishablepress.com/better-default-directory-views-with-htaccess/).

### Change Default Index Page [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

This rule tells the server to search for and serve `business.html` as the default directory index. This rule must exist in the .htaccess files of the root directory for which you wish to replace the default index file (e.g., `index.html`):

```
# serve alternate default index page
DirectoryIndex business.html
```

This rule is similar, only in this case, the server will scan the root directory for the listed files and serve the first match it encounters. The list is read from left to right:

```
# serve first available alternate default index page from series
DirectoryIndex filename.html index.cgi index.pl default.htm
```

For more information, check out [Better Default Directory Views with HTAccess](https://perishablepress.com/better-default-directory-views-with-htaccess/).

### Disguise Script Extensions [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

To enhance security, disguise scripting languages by replacing actual script extensions with dummy extensions of your choosing. For example, to change the `.foo` extension to `.php`, add the following line to your .htaccess file and rename all affected files accordingly:

```
# serve foo files as php files
AddType application/x-httpd-php .foo
# serve foo files as cgi files
AddType application/x-httpd-cgi .foo
```

### Limit Access to the Local Area Network (LAN) [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

```
# limit access to local area network
<Limit GET POST PUT>
	Order deny,allow
	Deny from all
	Allow from 192.168.0.0/33
</Limit>
```

### Secure Directories by IP Address and/or Domain [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

In the following example, all IP addresses are *allowed access* except for `12.345.67.890` and `example.com`:

```
# allow all except those indicated here
<Limit GET POST PUT>
	Order allow,deny
	Allow from all
	Deny from 12.345.67.890
	Deny from example\.com
</Limit>
```

In the following example, all IP addresses are *denied access* except for `12.345.67.890` and `example.com`:

```
# deny all except those indicated here
<Limit GET POST PUT>
	Order deny,allow
	Deny from all
	Allow from 12.345.67.890
	Allow from example\.com
</Limit>
```

This is how to block unwanted visitors based on the referring domain. You can also save bandwidth by [blocking specific file types](https://perishablepress.com/stupid-htaccess-tricks/#types) — such as `.jpg`, `.zip`, `.mp3`, `.mpg` — from specific referring domains. Simply replace `scumbag` and `wormhole` with the offending domains of your choice:

```
# block visitors referred from indicated domains
<IfModule mod_rewrite.c>
	RewriteEngine on
	RewriteCond %{HTTP_REFERER} scumbag\.com [NC,OR]
	RewriteCond %{HTTP_REFERER} wormhole\.com [NC,OR]
	RewriteRule .* - [F]
</ifModule>
```

For more information, check out [How to Block Bad Bots](https://perishablepress.com/block-bad-bots/) and [Eight Ways to Redirect with Apache’s mod_rewrite](https://perishablepress.com/eight-ways-to-blacklist-with-apaches-mod_rewrite/).

### Allow or deny domain access for specified range of IP addresses [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

There are several effective ways to block a range of IP addresses via .htaccess. This first method blocks an IP range specified by their CIDR (Classless Inter-Domain Routing) number. This method is useful for blocking mega-spammers such as RIPE, Optinet, and others.

If, for example, you find yourself adding line after line of Apache `Deny` directives for addresses beginning with the same first few numbers, choose one of them and try a [whois lookup](https://lookup.icann.org/). Listed within the whois results will be the CIDR value representing every IP address associated with that particular network.

Thus, blocking via CIDR is an effective way to eloquently prevent all IP instances of the offender from accessing your site. Here is a generalized example for blocking by CIDR (edit values to suit your needs):

```
# block IP range by CIDR number
<Limit GET POST PUT>
	Order allow,deny
	Allow from all
	Deny from 10.1.0.0/16
	Deny from 80.0.0/8
</Limit>
```

Likewise, to allow an IP range by CIDR number:

```
# allow IP range by CIDR number
<Limit GET POST PUT>
	Order deny,allow
	Deny from all
	Allow from 10.1.0.0/16
	Allow from 80.0.0/8
</Limit>
```

Another effective way to block an entire range of IP addresses involves truncating digits until the desired range is represented. As an IP address is read from left to right, its value represents an increasingly specific address.

For example, a fictitious IP address of `99.88.77.66` would designate some uniquely specific IP address. Now, if we remove the last two digits (`66`) from the address, it would represent *any* address beginning with the remaining digits. That is, `99.88.77` represents `99.88.77.1`, `99.88.77.2`, … `99.88.77.99`, …etc. Likewise, if we then remove another pair of digits from the address, its range suddenly widens to represent every IP address `99.88.x.y`, where `x` and `y` represent any valid set of IP address values (i.e., you would block 256 * 256 = 65,536 unique IP addresses).

Following this logic, it is possible to block an entire range of IP addresses to varying degrees of specificity. Here are few generalized lines exemplifying proper .htaccess syntax (edit values to suit your needs):

```
# block IP range by address truncation
<Limit GET POST PUT>
	Order allow,deny
	Allow from all
	Deny from 99.88.77.66
	Deny from 99.88.77.*
	Deny from 99.88.*.*
	Deny from 99.*.*.*
</Limit>
```

Likewise, to allow an IP range by address truncation:

```
# allow IP range by address truncation
<Limit GET POST PUT>
	Order deny,allow
	Deny from all
	Allow from 99.88.77.66
	Allow from 99.88.77.*
	Allow from 99.88.*.*
	Allow from 99.*.*.*
</Limit>
```

Note: for these examples, we are using `<Limit>` to restrict the rule set to the specified request methods (`GET`, `POST`, and `PUT`). So you can either customize which methods should be targeted, or to target all requests, simply remove the surrounding `<Limit>` container.

### Block or allow multiple IP addresses on one line [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Save a little space by blocking multiple IP addresses or ranges on one line. Here are few examples (edit values to suit your needs):

```
# block two unique IP addresses
Deny from 99.88.77.66 11.22.33.44
# block three ranges of IP addresses
Deny from 99.88 99.88.77 11.22.33
```

Likewise, to allow multiple IP addresses or ranges on one line:

```
# allow two unique IP addresses
Allow from 99.88.77.66 11.22.33.44
# allow three ranges of IP addresses
Allow from 99.88 99.88.77 11.22.33
```

### Miscellaneous rules for blocking and allowing IP addresses [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Here are few miscellaneous rules for blocking various types of IP addresses. These rules may be adapted to *allow* the specified IP values by simply changing the `Deny` directive to `Allow`. Check ’em out (edit values to suit your needs):

```
# block a partial domain via network/netmask values
Deny from 99.1.0.0/255.255.0.0
# block a single domain
Deny from 99.88.77.66
# block domain.com but allow sub.domain.com
Order deny,allow
Deny from domain.com
Allow from sub.domain.com
```

### Stop Hotlinking, Serve Alternate Content [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

To serve ’em some unexpected alternate content when [hotlinking](https://perishablepress.com/creating-the-ultimate-htaccess-anti-hotlinking-strategy/) is detected, employ the following code, which will protect all files of the types included in the last line (add more types as needed). Remember to replace the dummy path names with real ones. Also, the name of the nasty image being served in this case is `eatme.jpe`, as indicated in the line containing the `RewriteRule`.

```
# stop hotlinking and serve alternate content
<IfModule mod_rewrite.c>
	RewriteEngine on
	RewriteCond %{HTTP_REFERER} !^$
	RewriteCond %{HTTP_REFERER} !^http://(www\.)?domain\.com/.*$ [NC]
	RewriteRule .*\.(gif|jpg)$ http://www.domain.com/eatme.jpe [R,NC,L]
</ifModule>
```

Note: To deliver a standard (or custom, if configured) error page instead of some nasty image of the Fonz, replace the line containing the `RewriteRule` in the above .htaccess directive with the following line:

```
# serve a standard 403 forbidden error page
RewriteRule .*\.(gif|jpg)$ - [F,L]
```

Note: To grant linking permission to a site other than yours, insert this code block after the line containing the `domain.com` string. Remember to replace `goodsite.com` with the actual site domain:

```
# allow linking from the following site
RewriteCond %{HTTP_REFERER} !^http://(www\.)?goodsite\.com/.*$ [NC]
```

For examples of allowing other sites access to your protected files, check out [Allow Feedburner Access to Hotlink-Protected Images](https://perishablepress.com/allow-feedburner-access-to-hotlink-protected-images/) and [Allow Google Reader Access to Hotlink-Protected Images](https://perishablepress.com/allow-google-reader-to-access-hotlink-protected-images/). Also, for an in-depth tutorial on hotlink protection, check out [Creating the Ultimate htaccess Anti-Hotlinking Strategy](https://perishablepress.com/creating-the-ultimate-htaccess-anti-hotlinking-strategy/).

### Block Evil Robots, Site Rippers, and Offline Browsers [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Eliminate some of the unwanted scum from your userspace by injecting this handy block of code. After such, any listed agents will be denied access and receive an error message instead. Please be advised that there are much more comprehensive [blacklists](https://perishablepress.com/tag/blacklist/) available this example has been truncated for performance purposes. Note: DO NOT include the `[OR]` on the very last `RewriteCond` or your server will throw an error.

```
# deny access to evil robots site rippers offline browsers and other nasty scum
RewriteBase /
RewriteCond %{HTTP_USER_AGENT} ^Anarchie [OR]
RewriteCond %{HTTP_USER_AGENT} ^ASPSeek [OR]
RewriteCond %{HTTP_USER_AGENT} ^attach [OR]
RewriteCond %{HTTP_USER_AGENT} ^autoemailspider [OR]
RewriteCond %{HTTP_USER_AGENT} ^Xaldon\ WebSpider [OR]
RewriteCond %{HTTP_USER_AGENT} ^Xenu [OR]
RewriteCond %{HTTP_USER_AGENT} ^Zeus.*Webster [OR]
RewriteCond %{HTTP_USER_AGENT} ^Zeus
RewriteRule ^.* - [F,L]
```

Or, instead of delivering a friendly error message (i.e., the last line), send these bad boys to the hellish website of your choice by replacing the `RewriteRule` in the last line with one of the following two examples:

```
# send em to a hellish website of your choice
RewriteRule ^.*$ http://www.hellish-website.com [R,L]
```

Or, to send em to a virtual blackhole of fake email addresses:

```
# send em to a virtual blackhole of fake email addresses
RewriteRule ^.*$ http://english-61925045732.spampoison.com [R,L]
```

You may also add specific [referrers](https://perishablepress.com/4g-ultimate-referrer-blacklist/) to your blacklist by using `HTTP_REFERER`. Here, we use the infamously scummy domain, `iaea.org` as our blocked example, and we use `yourdomain` as your domain (the domain to which you are blocking `iaea.org`):

```
RewriteCond %{HTTP_REFERER} ^http://www.iaea.org$
RewriteRule !^http://[^/.]\.yourdomain\.com.* - [F,L]
```

For more information about blocking malicious requests, check out [How to Block Bad Bots](https://perishablepress.com/block-bad-bots/) and the Perishable Press [6G Firewall](https://perishablepress.com/6g/).

### More Stupid Blocking Tricks [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Note: Although these redirect techniques are aimed at blocking and redirecting nasty scum-sucking sites, the directives may also be employed for friendly redirection purposes:

```
# redirect any request for anything from spamsite to differentspamsite
RewriteCond %{HTTP_REFERER} ^http://.*spamsite.*$ [NC]
RewriteRule .* http://www.differentspamsite.com [R]
# redirect all requests from spamsite to an image of something at differentspamsite
RewriteCond %{HTTP_REFERER} ^http://.*spamsite.*$ [NC]
RewriteRule .* http://www.differentspamsite/something.jpg [R]
# redirect traffic from a certain address or range of addresses to another site
RewriteCond %{REMOTE_ADDR} 192.168.10.*
RewriteRule .* http://www.differentspamsite.com/index.html [R]
```

For more information, check out [Eight Ways to Redirect with Apache’s mod_rewrite](https://perishablepress.com/eight-ways-to-blacklist-with-apaches-mod_rewrite/).

### Even More Scum-Blocking Tricks [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Here is a step-by-step series of code blocks that should equip you with enough knowledge to block any/all necessary entities. Read through the set of code blocks, observe the patterns, and then copy, combine and customize to suit your specific scum-blocking needs:

```
# set variables for user agents and referers and ip addresses
SetEnvIfNoCase User-Agent ".*(user-agent-you-want-to-block|php/perl).*" BlockedAgent
SetEnvIfNoCase Referer ".*(block-this-referrer|and-this-referrer|and-this-referrer).*" BlockedReferer
SetEnvIfNoCase REMOTE_ADDR ".*(666.666.66.0|22.22.22.222|999.999.99.999).*" BlockedAddress
# set variable for any class B network coming from a given netblock
SetEnvIfNoCase REMOTE_ADDR "66.154.*" BlockedAddress
# set variable for two class B networks 198.25.0.0 and 198.26.0.0
SetEnvIfNoCase REMOTE_ADDR "198.2(5|6)\..*" BlockedAddress
# deny any matches from above and send a 403 denied
<Limit GET POST PUT>
	Order deny,allow
	Deny from env=BlockedAgent
	Deny from env=BlockedReferer
	Deny from env=BlockedAddress
	Allow from all
</Limit>
```

For more information, check out [How to Block Bad Bots](https://perishablepress.com/block-bad-bots/).

### Password-Protect Directories [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

For in-depth coverage of password-protecting directories, check out my tutorial, [HTAccess Password-Protection Tricks](https://perishablepress.com/htaccess-password-protection-tricks/). Also, here is an excellent online tool for generating the necessary elements for a password-protected directory: [.htaccess Password Generator](https://www.askapache.com/online-tools/htpasswd-generator/).

### Password-protect Files, Directories, and More.. [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Secure site contents by requiring user authentication for specified files and/or directories. The first example shows how to password-protect the specified file, `secure.php`.

```
# password-protect single file
<Files secure.php>
	AuthType Basic
	AuthName "Prompt"
	AuthUserFile /home/path/.htpasswd
	Require valid-user
</Files>
```

The second example employs the `FilesMatch` directive to protect any/all files which match any of the specified character strings, `execute`, `index`,`secure`,`insanity`, `biscuit`,.

```
# password-protect multiple files
<FilesMatch "^(execute|index|secure|insanity|biscuit)*$">
	AuthType basic
	AuthName "Development"
	AuthUserFile /home/path/.htpasswd
	Require valid-user
</FilesMatch>
```

The third example demonstrates how to protect an entire directory. So if this rule set is included in a directory named `/private/`, all files and subdirectories within `/private/` will be protected.

```
# password-protect the directory in which this .htaccess rule resides
AuthType basic
AuthName "This directory is protected"
AuthUserFile /home/path/.htpasswd
AuthGroupFile /dev/null
Require valid-user
```

The fourth example provides password-protection for all IPs except that which is specified, `99.88.77.66`.

```
# password-protect directory for every IP except the one specified
# place in .htaccess file of a directory to protect that entire directory
AuthType Basic
AuthName "Personal"
AuthUserFile /home/path/.htpasswd
Require valid-user
Allow from 99.88.77.66
Satisfy Any
```

Remember to edit these rules according to your specific needs. For more information on protecting resources with .htaccess, check out [HTAccess Password-Protection Tricks](https://perishablepress.com/htaccess-password-protection-tricks/).

### Require SSL (Secure Sockets Layer) [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Here is an excellent method for requiring SSL:

```
# require SSL
SSLOptions +StrictRequire
SSLRequireSSL
SSLRequire %{HTTP_HOST} eq "domain.tld"
ErrorDocument 403 https://domain.tld

# require SSL without mod_ssl
RewriteCond %{HTTPS} !=on [NC]
RewriteRule ^.*$ https://%{SERVER_NAME}%{REQUEST_URI} [R,L]
```

For more techniques involving SSL/HTTPS, check out [Redirect HTTP to HTTPS](https://wp-mix.com/htaccess-redirect-http-to-https/).

### Automatically CHMOD Various File Types [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

This method is great for ensuring the CHMOD settings for various file types. Employ the following rules in the root .htaccess file to affect *all* specified file types, or place in a specific directory to affect only those files (edit file types according to your needs):

```
# ensure CHMOD settings for specified file types
# remember to never set CHMOD 777 unless you know what you are doing
# files requiring write access should use CHMOD 766 rather than 777
# keep specific file types private by setting their CHMOD to 400
chmod .htpasswd files 640
chmod .htaccess files 644
chmod php files 600
```

### Disguise all file extensions [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

This method will disguise all file types (i.e., any file extension) and present them as `.php` files (or whichever extension you choose):

```
# diguise all file extensions as php
ForceType application/x-httpd-php
```

### Protect against denial-of-service (DOS) attacks by limiting file upload size [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

One method to help protect your server against DOS attacks involves limiting the maximum allowable size for file uploads. Here, we are limiting file upload size to 10240000 bytes, which is equivalent to around 10 megabytes. For this rule, file sizes are expressed in bytes. Check [here](https://www.webopedia.com/quick_ref/FileSizeConversionTable.asp) for help with various file size conversions.

```
# protect against DOS attacks by limiting file upload size
LimitRequestBody 10240000
```

For more infos, check out [Limit File Upload Size](https://htaccessbook.com/limit-file-upload-size/) and [Limit HTTP Request Size](https://wp-mix.com/limit-http-request-size/).

### Secure directories by disabling execution of scripts [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Prevent malicious brainiacs from actively scripting secure directories by adding the following rules to the representative .htaccess file (edit file types to suit your needs):

```
# secure directory by disabling script execution
AddHandler cgi-script .php .pl .py .jsp .asp .htm .shtml .sh .cgi
Options -ExecCGI
```

## Usability Tricks [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

### Minimize CSS Image Flicker in IE6 [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Add the following .htaccess rules to minimize or even eliminate CSS background-image “flickering” in MSIE6:

```
# minimize image flicker in IE6
ExpiresActive On
ExpiresByType image/gif A2592000
ExpiresByType image/jpg A2592000
ExpiresByType image/png A2592000
```

### Deploy Custom Error Pages [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Replicate the following patterns to serve your own set of custom error pages. Simply replace the `/errors/###.html` with the correct path and file name. Also change the `###` preceding the path to summon pages for other errors. Note: your custom error pages must be [larger than 512 bytes](https://perishablepress.com/important-note-for-your-custom-error-pages/) or they will be completely ignored by Internet Explorer:

```
# serve custom error pages
ErrorDocument 400 /errors/400.html
ErrorDocument 401 /errors/401.html
ErrorDocument 403 /errors/403.html
ErrorDocument 404 /errors/404.html
ErrorDocument 500 /errors/500.html
```

For more details, check out [Custom HTTP Errors via htaccess](https://perishablepress.com/custom-http-errors-via-htaccess/).

### Provide a Universal Error Document [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

```
# provide a universal error document
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule ^.*$ /dir/error.php [L]
```

For more information, check out [Custom HTTP Errors via htaccess](https://perishablepress.com/custom-http-errors-via-htaccess/).

### Employ Basic URL Spelling Check [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

This bit of voodoo will auto-correct simple spelling errors in the URL:

```
# automatically corect simple speling erors
<IfModule mod_speling.c>
	CheckSpelling On
</IfModule>
```

### Instruct browser to download multimedia files rather than display them [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Here is a useful method for delivering multimedia file downloads to your users. Typically, browsers will attempt to play or stream such files when direct links are clicked. With this method, provide a link to a multimedia file and a dialogue box will provide users the choice of saving the file or opening it. Here are a few .htaccess rules demonstrating the technique (edit file types according to your specific needs):

```
# instruct browser to download multimedia files
AddType application/octet-stream .avi
AddType application/octet-stream .mpg
AddType application/octet-stream .wmv
AddType application/octet-stream .mp3
```

For more information, check out [Force file download with .htaccess](https://wp-mix.com/force-file-download-htaccess/).

### Display source code for dynamic files [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

There are many situations where site owners may wish to display the contents of a dynamic file rather than executing it as a script. To exercise this useful technique, create a directory in which to place dynamic files that should be displayed rather than executed, and add the following line of code to the .htaccess file belonging to that directory. This method is known to work for `.pl`, `.py`, and `.cgi` file types. Here it is:

```
RemoveHandler cgi-script .pl .py .cgi
```

### Redirect visitors to a temporary site during site development [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

During web development, maintenance, or repair, send your visitors to an alternate site while retaining full access for yourself. This is a very useful technique for preventing visitor confusion or dismay during those awkward, web-development moments. Here are the generalized .htaccess rules to do it (edit values to suit your needs):

```
# redirect all visitors to alternate site but retain full access for you
ErrorDocument 403 http://www.alternate-site.com
Order deny,allow
Deny from all
Allow from 99.88.77.66
```

For more in-depth information and advanced techniques, check out the following tutorials:

- [.htaccess Redirect to Maintenance Page](https://perishablepress.com/htaccess-redirect-maintenance-page-site-updates/)
- [Maintenance mode via .htaccess](https://wp-mix.com/maintenance-mode-htaccess/)

### Provide a password prompt for visitors during site development [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Here is another possible solution for “hiding” your site during those private, site-under-construction moments. Here we are instructing Apache to provide visitors with a password prompt while providing open access to any specifically indicated IP addresses or URLs. Edit the following code according to your IP address and other development requirements (thanks to [askapache.com](https://www.askapache.com/) for sharing this trick):

```
# password prompt for visitors
AuthType basic
AuthName "This site is currently under construction"
AuthUserFile /home/path/.htpasswd
AuthGroupFile /dev/null
Require valid-user
# allow webmaster and any others open access
Order Deny,Allow
Deny from all
Allow from 111.222.33.4
Allow from favorite.validation/services/
Allow from googlebot.com
Satisfy Any
```

For more in-depth information and advanced techniques, check out the following tutorials:

- [.htaccess Redirect to Maintenance Page](https://perishablepress.com/htaccess-redirect-maintenance-page-site-updates/)
- [Maintenance mode via .htaccess](https://wp-mix.com/maintenance-mode-htaccess/)
- [HTAccess Password-Protection Tricks](https://perishablepress.com/htaccess-password-protection-tricks/)

### Prevent file or directory access according to specified time periods [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Prevent viewing of all pictures of Fonzi during the midnight hour — or *any* files during *any* time period — by using this handy .htaccess rule set:

```
# prevent access during the midnight hour
RewriteCond %{TIME_HOUR} ^12$
RewriteRule ^.*$ - [F,L]
# prevent access throughout the afternoon
RewriteCond %{TIME_HOUR} ^(12|13|14|15)$
RewriteRule ^.*$ - [F,L]
```

For more information on numerical regular expressions, check out [Redirecting URLs that Include Numbers](https://perishablepress.com/redirecting-urls-numbers/). The article is about redirecting requests, but contains a lot of useful regex infos for matching numbers.

## Redirect Tricks [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

### Important Note About Redirecting via mod_rewrite [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

For all redirects using the `mod_rewrite` directive, it is necessary to have the `RewriteEngine` enabled. It is common practice to enable the `mod_rewrite` directive in either the server configuration file or at the top of the site’s root .htaccess file. If the `mod_rewrite` directive is not included in either of these two places, it should be included as the first line in any code block that utilizes a rewrite function (i.e., `mod_rewrite`), but only needs to be included once for each .htaccess file. The proper `mod_rewrite` directive is included here for your convenience, but may or may not also be included within some of the code blocks provided in this article:

```
# enable rewrite engine
RewriteEngine on
```

**Note:** It’s fine to include this directive multiple times in the same .htaccess file.

### Redirect from “www” domain to “non-www” domain [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

This technique is referred to as [www canonicalization](https://wp-mix.com/canonical-www-htaccess/). It uses a “301 redirect” to establish a permanent redirect from the “www” version of a domain to its corresponding “non-www” version. Be sure to test *immediately* after preparing 301 redirects and remove it immediately if any errors occur. Use a [server header checker](https://addons.mozilla.org/en-US/firefox/addon/http-header-live/) to confirm a proper 301 response. Further, always include a trailing slash `/` when linking directories. Finally, be consistent with the `www` subdomain in all links (either use it always or never).

```
# permanently redirect from www domain to non-www domain
RewriteEngine on
Options +FollowSymLinks
RewriteCond %{HTTP_HOST} ^www\.domain\.tld$ [NC]
RewriteRule (.*) http://domain.tld/$1 [R=301,L]
```

This code redirects all requests for any URL at `www.domain.tld` to their respective URLs at `domain.tld` (i.e., it removes the `www` prefix from all requests). For more information on www-canonicalization, check out [Canonical www via .htaccess](https://wp-mix.com/canonical-www-htaccess/) and [Canonical URLs for a single page site](https://wp-mix.com/canonical-urls-single-page-site/).

### Redirect from an old domain to a new domain [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

For a basic domain change from `old-domain.com` to `new-domain.com` (with identical files and resources on both domains), use the `Rewrite` rule to remap the old domain to the new domain. Remember to check your site thoroughly after implementing this redirect.

```
# redirect from old domain to new domain
RewriteEngine On
RewriteRule (.*) http://www.new-domain.com/$1 [R=301,L]
```

Once in place, this rule set redirects all requests from `old-domain.com` to `new-domain.com`.

### Redirect String Variations to a Specific Address [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

For example, if we wanted to redirect any requests containing the character string, `perish`, to our main page at `perishablepress.com`, we would replace `some-string` with `perish` in the following code block:

```
# redirect all variations of a specific string
RewriteRule ^some-string http://www.domain.com/index.php/blog/target [R]
```

Here are two other methods for accomplishing string-related mapping tasks:

```
# map variations to same directory on same server
AliasMatch ^/director(y|ies) /www/docs/target
# map variations to same directory on different server
RedirectMatch ^/[dD]irector(y|ies) http://domain.com
```

Refer to the section on [Regex Character Definitions](https://perishablepress.com/stupid-htaccess-tricks/#gen5) for explanations of the regular expressions used in these examples.

### Other Fantastic Redirect Tricks [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Redirect an entire site via 301 “Permanent” server response:

```
# redirect an entire site via 301
Redirect 301 / http://www.domain.com/
```

Redirect a specific file via 301 “Permanent” server response::

```
# redirect a specific file via 301
Redirect 301 /current/currentfile.html http://www.newdomain.com/new/newfile.html
```

Redirect an entire site via permanent redirect (i.e., `permanent` may be used instead of `301`, just alternate syntax):

```
# redirect an entire site via permanent redirect
Redirect permanent / http://www.domain.com/
```

Redirect a page or directory via permanent redirect:

```
# redirect a page or directory
Redirect permanent old_file.html   http://www.new-domain.com/new_file.html
Redirect permanent /old_directory/ http://www.new-domain.com/new_directory/
```

Redirect a file using `RedirectMatch` (instead of `Redirect`):

```
# redirect all requests via RedirectMatch
RedirectMatch 301 (.*) http://www.domain.com/index.html
```

The main difference between `RedirectMatch` and `Redirect` is that `RedirectMatch` allows pattern matching via [regular expressions](https://perishablepress.com/stupid-htaccess-tricks/#gen5).

### Send visitors to a subdomain [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

This rule will ensure that all visitors are viewing pages via the subdomain of your choice. Edit the `subdomain`, `domain`, and `tld` to match your subdomain, domain, and top-level domain respectively:

```
# send visitors to a subdomain
RewriteCond %{HTTP_HOST} !^$
RewriteCond %{HTTP_HOST} !^subdomain\.domain\.com$ [NC]
RewriteRule ^/(.*)$ http://subdomain.domain.tld/$1 [L,R=301]
```

### More fun with RewriteCond and RewriteRule [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Here are some further examples of redirecting and rewriting with Apache’s rewrite module, `mod_rewrite`.

```
# rewrite only if file is not found
RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule ^(.+)special\.html?$ cgi-bin/special/special-html/$1
# rewrite only if image is not found
RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule images/special/(.*).gif cgi-bin/special/mkgif?$1
# rewrite rules for various directories
RewriteRule ^(.*)/aud/(.*)$ $1/audio-files/$2 [L,R=301]
RewriteRule ^(.*)/img/(.*)$ $1/image-files/$2 [L,R=301]
RewriteRule ^(.*)/fla/(.*)$ $1/flash-files/$2 [L,R=301]
RewriteRule ^(.*)/vid/(.*)$ $1/video-files/$2 [L,R=301]
# broswer sniffing via environmental variables
RewriteCond %{HTTP_USER_AGENT} ^Mozilla.*
RewriteRule ^/$ /index-for-mozilla.html [L]

RewriteCond %{HTTP_USER_AGENT} ^Lynx.*
RewriteRule ^/$ /index-for-lynx.html [L]

RewriteRule ^/$ /index-for-all-others.html [L]
# redirect query to google search
RewriteCond %{REQUEST_URI} /search/(.*) [NC]
RewriteRule (.*) http://www.google.com/search?q=$1 [R,NC,L]
# deny request based on request method
RewriteCond %{REQUEST_METHOD} ^(TRACE|TRACK|OPTIONS|HEAD)$ [NC]
RewriteRule (.*) - [F]
# redirect uploads to a better place
RewriteCond %{REQUEST_METHOD} ^(PUT|POST)$ [NC]
RewriteRule (.*) /cgi-bin/upload-processor.cgi?p=$1 [L,QSA]
```

Learn more and check out some practical redirect examples in my tutorial, [redirecting stuff with .htaccess](https://perishablepress.com/tag/redirect/).

### More fun with Redirect and RedirectMatch [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

For redirects that are on the same domain, like when you move a file into a new directory, you can omit the protocol and domain from the destination URI. Here is a basic example:

```
# redirect for a single file
Redirect 301 /old-dir/old-file.html /new-dir/new-file.html
```

Here we are redirecting `/old-dir/old-file.html` to `/new-dir/new-file.html` on the *same domain*. So we excluded `http://domain.com` from the destination URI (compare with other examples in this section).

To redirect multiple files, we can pattern-match using any regex that is necessary. For example, we can use `(.*)` to match anything (or nothing):

```
# redirect multiple files
RedirectMatch 301 /dir/xyz/(.*) http://domain.com/$1
```

Here we are using `RedirectMatch` to match any request for `/xyz/` or any file or directory contained in `/xyz/`. If the request matches, it will be redirected via 301 “Permanent” status code to the new domain. The `$1` in this example represents whatever is matched by `(.*)`. So if the requested URI is `/dir/xyz/bananaz.php`, it will be redirected to `http://domain.com/bananaz.php`.

To redirect an entire, such that every URL is redirected to the same URL on the new domain, use `Redirect`:

```
# redirect all URLs to new domain
Redirect 301 / http://new-domain.com/
```

Alternately, if you want to redirect **all** requests from the old domain to the **same** URL on the new domain (e.g., the homepage), we can use `RedirectMatch`, like:

```
# redirect all URLs to same URL
RedirectMatch 301 / http://new-domain.com/
```

Notice the difference: `RedirectMatch` redirects everything to the same location, whereas `Redirect` redirects each URL to the *same URL* on the new domain.

For more information on redirecting URLs, check out the following tutorials:

- [How to Redirect URLs](https://perishablepress.com/redirect-urls/)
- [Redirect Query String via .htaccess](https://perishablepress.com/redirect-query-string-htaccess/)
- [Redirecting URLs that Include Numbers](https://perishablepress.com/redirecting-urls-numbers/)
- [Canonical www via .htaccess](https://wp-mix.com/canonical-www-htaccess/)
- [Canonical URLs for a single page site](https://wp-mix.com/canonical-urls-single-page-site/)
- [More tutorials about redirecting stuff](https://perishablepress.com/tag/redirect/)

## WordPress Tricks [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

### Secure WordPress Contact Forms [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

Protect your insecure WordPress contact forms against online unrighteousness by verifying the domain from whence the form is called. Remember to replace the `domain.com` and `contact.php` with your domain and contact-form file names, respectively.

```
# secure wordpress contact forms via referrer check
RewriteCond %{HTTP_REFERER} !^http://www.domain.com/.*$ [NC]
RewriteCond %{REQUEST_POST} .*contact.php$
RewriteRule .* - [F]
```

For some related discussion, also check out my tutorials, [Protect Against Malicious POST Requests](https://perishablepress.com/protect-post-requests/) and [Secure Visitor Posting for WordPress](https://perishablepress.com/secure-visitor-posting-for-wordpress/).

### WordPress Permalinks [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

In my article, [The .htaccess rules for all WordPress Permalinks](https://perishablepress.com/the-htaccess-rules-for-all-wordpress-permalinks/), I reveal the precise .htaccess directives used by the WordPress blogging platform for permalink functionality. Here, for the sake of completeness, we repeat the directives only. For more details please refer to the original article. There are two possibilities for this technique: WordPress installed in the site root directory, or WordPress installed in its own directory (subdirectory).

#### WordPress installed in site root

If WordPress is installed in the site’s root directory, WordPress creates and uses the following .htaccess directives:

```
# BEGIN WordPress
<IfModule mod_rewrite.c>
	RewriteEngine On
	RewriteBase /
	RewriteRule ^index\.php$ - [L]
	RewriteCond %{REQUEST_FILENAME} !-f
	RewriteCond %{REQUEST_FILENAME} !-d
	RewriteRule . /index.php [L]
</IfModule>
# END WordPress
```

No changes are required, strictly plug-&-play.

#### WordPress installed in its own directory

If WordPress is installed in some subdirectory `/foo/`, WordPress creates and uses the following .htaccess directives:

```
# BEGIN WordPress
<IfModule mod_rewrite.c>
	RewriteEngine On
	RewriteBase /wordpress/
	RewriteRule ^index\.php$ - [L]
	RewriteCond %{REQUEST_FILENAME} !-f
	RewriteCond %{REQUEST_FILENAME} !-d
	RewriteRule . /wordpress/index.php [L]
</IfModule>
# END WordPress
```

Again, no changes are required, strictly plug-&-play. For more information about either of these permalink techniques, refer to the original article, [The .htaccess rules for all WordPress Permalinks](https://perishablepress.com/the-htaccess-rules-for-all-wordpress-permalinks/).

#### More .htaccess techniques for WordPress

For more WordPress techniques, check out these resources:

- [WordPress .htaccess file](https://perishablepress.com/wordpress-htaccess-file/)
- [Stop WordPress from modifying .htaccess](https://perishablepress.com/stop-wordpress-htaccess/)
- [WordPress Block Proxy Visits](https://perishablepress.com/wordpress-block-proxy-visits/)
- [Perishable Press articles about WordPress and .htaccess](https://perishablepress.com/search/wordpress+.htaccess/)

Also check out my book, [.htaccess made easy](https://htaccessbook.com/) — it includes an entire chapter of awesome .htaccess WordPress techniques.

## Random .htaccess Tricks [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

### Activate SSI for HTML/SHTML file types [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

```
# activate SSI for HTML and or SHTML file types
AddType text/html .html
AddType text/html .shtml
AddHandler server-parsed .html
AddHandler server-parsed .shtml
AddHandler server-parsed .htm
```

### Grant CGI access in a specific directory [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

```
# grant CGI access in a specific directory
Options +ExecCGI
AddHandler cgi-script cgi pl
# to enable all scripts in a directory use the following
SetHandler cgi-script
```

### Disable magic_quotes_gpc for PHP enabled servers [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

```
# turn off magic_quotes_gpc for PHP enabled servers
<ifmodule mod_php4.c>
	php_flag magic_quotes_gpc off
</ifmodule>
```

### Enable MD5 digests [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

**Note:** enabling this directive may result in a relative *decrease* in server performance.

```
# enable MD5 digests via ContentDigest
ContentDigest On
```

### Expression Engine Tricks [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

```
# redirect Atom and RSS requests
RewriteRule .*atom.xml$ http://www.yoursite.com/index.php/weblog/rss_atom/ [R]
RewriteRule .*rss.xml$ http://www.yoursite.com/index.php/weblog/rss_2.0/ [R]
# redirect all index.html files
RewriteRule /.*index.html$ http://www.domain.com/index.php [R]
```

## Resources [^](https://perishablepress.com/stupid-htaccess-tricks/#menu)

- [.htaccess made easy](https://htaccessbook.com/)
- [Useful .htaccess rules for all websites](https://htaccessbook.com/useful-htaccess-rules/)
- [Apache Documentation: .htaccess](https://httpd.apache.org/docs/current/howto/htaccess.html)
- [Apache Documentation: mod_rewrite](https://httpd.apache.org/docs/current/mod/mod_rewrite.html)
- [Apache Documentation: mod_alias](https://httpd.apache.org/docs/current/mod/mod_alias.html)
- [Regular Expressions Guide](https://www.regular-expressions.info/)
- [Automatic .htaccess file generator](http://cooletips.de/htaccess/)