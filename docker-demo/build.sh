# 1.0.3 -- adapted to migrations upto 06-add-memo-to-conduct-shinryou.sql
# 1.0.2 -- added memo column to kouhi table

VERSION=1.0.3

docker build -t hangilc/myclinic-mysql-demo:$VERSION .
