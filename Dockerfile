FROM postgres:18.6@sha256:1267c7e692de235fda2a50dbcdbcbca4672ea6a0298576a6bd9d07cafc319b32

RUN apt-get update \
 && apt-get install -y --no-install-recommends pgbackrest \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir -p /etc/pgbackrest /var/log/pgbackrest /var/spool/pgbackrest \
 && chown -R postgres:postgres /etc/pgbackrest /var/log/pgbackrest /var/spool/pgbackrest \
 && pgbackrest version
