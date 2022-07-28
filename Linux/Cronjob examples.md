```
*/5 6-21 * * * arangodump --server.database amiran  --compress-output true --output-directory /home/db_backup/`date "+\%y\%m\%d-\%H\%M"` --server.password >

0 1 * * * find /home/db_backup -mindepth 1 -type d -ctime +30 -delete
```

* the mindepth is for excluding the "." directory
* Set date to the created filenames.  The date format should be like this. Otherwise it won't work at all.
* delete files with more than specific age

#### update:

```
*/10 6-21 * * * mkdir -p /home/amiran/db_backup && cd /home/amiran/db_backup && arangodump --server.database amiran --compress-output true --server.password YOUR-PASS --overwrite true && zip -r `date "+\%y\%m\%d-\%H\%M".zip` dump && rm -r /home/amiran/db_backup/dump >/dev/null 2>&1

0 1 * * * find /home/amiran/db_backup -mindepth 1 -iname \*.zip -ctime +30 -exec rm -rf {} + >/dev/null 2>&1
```

