# ************************************************************
#
# This step will start mongodb
#
#   Variables used:
#
#   Outputs:
#     $FLOW_DATABASE_MYSQL_VERSION
#     $FLOW_DATABASE_MYSQL_IP
#     $FLOW_DATABASE_MYSQL_PORT
#     $FLOW_DATABASE_MYSQL_USER
#     $FLOW_DATABASE_MYSQL_PWD
#
# ************************************************************

flow_cmd "sudo /etc/init.d/mysql start" --echo

FLOW_DATABASE_MYSQL_VERSION="$(mysql --version 2>&1)"
FLOW_DATABASE_MYSQL_PORT="3306"
FLOW_DATABASE_MYSQL_USER="root"
FLOW_DATABASE_MYSQL_PWD=""
FLOW_DATABASE_MYSQL_IP="127.0.0.1"
