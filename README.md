# PHP Layer For AWS Lambda

Adds the PHP 7.1 MySQL modules to your Lambda environment via a layer.

The following MySQL-related modules are placed in `/opt/lib/php/7.1/modules`:

```
mysqli.so
mysqlnd.so
pdo.so
pdo_mysql.so
```

To make use of these, your `php.ini` needs to load them:

```
extension=mysqlnd.so
```
