#!/usr/bin/zsh

set -e

run-mysql ()
{
   mysql --user=root --password=$MYSQL_ROOT_PASSWORD --host=mysql $MYSQL_DATABASE
}
