FROM mysql:5.7
ENV MYSQL_ROOT_PASSWORD=pass \
    MYSQL_USER=myuser \
    MYSQL_PASSWORD=mypass \
    MYSQL_DATABASE=myclinic 
COPY ./mysql-myclinic.cnf /etc/mysql/mysql.conf.d/mysql-myclinic.cnf
COPY ./tables.sql /docker-entrypoint-initdb.d/a-tables.sql
COPY ./add-onshi-table.sql /docker-entrypoint-initdb.d/b-add-onshi.sql
COPY ./add-kouhi-memo-table.sql /docker-entrypoint-initdb.d/c-add-kouhi-memo-table.sql
COPY ./data.sql /docker-entrypoint-initdb.d/z-data.sql
