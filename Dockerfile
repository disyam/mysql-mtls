FROM mysql:8

COPY ./mtls.cnf /etc/mysql/conf.d/
RUN chown 999:999 /etc/mysql/conf.d/mtls.cnf

COPY ./certs/ca.crt /var/lib/mysql-files/
RUN chown 999:999 /var/lib/mysql-files/ca.crt

COPY ./certs/server.crt /var/lib/mysql-files/
RUN chown 999:999 /var/lib/mysql-files/server.crt

COPY ./certs/server.key /var/lib/mysql-files/
RUN chown 999:999 /var/lib/mysql-files/server.key
RUN chmod 600 /var/lib/mysql-files/server.key

COPY ./user.sql /docker-entrypoint-initdb.d/
RUN chown 999:999 /docker-entrypoint-initdb.d/user.sql