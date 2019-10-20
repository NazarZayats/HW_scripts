#!/bin/bash
#
echo "*****************************************************************************"
mysql --version
echo "*****************************************************************************"
sleep 6

mysql -u root <<EOT
Create user test1221@localhost identified by 'pass';
Grant all privileges on *.* to test1221@localhost identified by 'pass' with grant option;
Flush PRIVILEGES;
EOT
mysql -u test1221 -ppass -e "show grants for test1221@localhost;"
sleep 5
mysql -u test1221 -ppass -e "use test; create table t1 ( column1 varchar(20), column2 varchar(20) );"
mysql -u test1221 -ppass -e "use test; insert into t1 (column1, column2) values ('data1', 'data2');"
mysql -u test1221 -ppass -e "use test; select * from t1;"
sleep 5
mysql -u test1221 -ppass -e "use test; drop table t1;"
mysql -u test1221 -ppass -e "show tables from test;"

echo "<< Mariadb is installed, and works. >>"
