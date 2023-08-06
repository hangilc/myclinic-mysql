FROM mysql:5.7
ENV MYSQL_ROOT_PASSWORD=pass \
    MYSQL_USER=myuser \
    MYSQL_PASSWORD=mypass \
    MYSQL_DATABASE=myclinic 
COPY ./mysql-myclinic.cnf /etc/mysql/mysql.conf.d/mysql-myclinic.cnf
COPY ./00-tables.sql /docker-entrypoint-initdb.d/00-tables.sql
COPY ./01-add-onshi-table.sql /docker-entrypoint-initdb.d/01-add-onshi-table.sql
COPY ./02-add-memo-to-kouhi.sql /docker-entrypoint-initdb.d/02-add-memo-to-kouhi.sql
COPY ./03-add-memo-to-patient.sql /docker-entrypoint-initdb.d/03-add-memo-to-patient.sql
COPY ./04-add-memo-to-shinryou.sql /docker-entrypoint-initdb.d/04-add-memo-to-shinryou.sql
COPY ./05-alter-visit-attributes-to-json.sql /docker-entrypoint-initdb.d/05-alter-visit-attributes-to-json.sql
COPY ./06-add-memo-to-conduct-shinryou.sql /docker-entrypoint-initdb.d/06-add-memo-to-conduct-shinryou.sql
COPY ./data.sql /docker-entrypoint-initdb.d/z-data.sql
