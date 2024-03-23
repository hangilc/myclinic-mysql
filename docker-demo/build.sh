# If XX-....sql file has been added, corresponding COPY ... line should be added to Dockerfile.

# 1.0.6 -- added patient summary
# 1.0.4 -- converted app_event data to JSON
# 1.0.3 -- adapted to migrations upto 06-add-memo-to-conduct-shinryou.sql
# 1.0.2 -- added memo column to kouhi table

VERSION=1.0.6

docker build -t hangilc/myclinic-mysql-demo:$VERSION .
