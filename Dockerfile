FROM postgres:18.6@sha256:979bccfde35445db618c65107d27d08c6c21339d8dc3ad4c830c6633947be0e4

RUN apt-get update \
 && apt-get install -y --no-install-recommends pgbackrest \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir -p /etc/pgbackrest /var/log/pgbackrest /var/spool/pgbackrest \
 && chown -R postgres:postgres /etc/pgbackrest /var/log/pgbackrest /var/spool/pgbackrest \
 && pgbackrest version
