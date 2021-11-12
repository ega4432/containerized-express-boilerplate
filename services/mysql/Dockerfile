FROM mysql:8.0
LABEL maintainer="ega4432 <ysmtegsr@gmail.com>"

ENV TZ=UTC

COPY ./services/mysql/etc/my.cnf /etc/my.cnf
COPY ./services/mysql/initdb.d/ /docker-entrypoint-initdb.d/
