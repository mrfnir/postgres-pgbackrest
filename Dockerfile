ARG POSTGRES_VERSION=18.6
FROM postgres:${POSTGRES_VERSION}

# ایمیج رسمی Postgres از قبل ریپوی PGDG رو داره، پس pgbackrest از همون نصب می‌شه
RUN apt-get update \
 && apt-get install -y --no-install-recommends pgbackrest \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir -p /etc/pgbackrest /var/log/pgbackrest /var/spool/pgbackrest \
 && chown -R postgres:postgres /etc/pgbackrest /var/log/pgbackrest /var/spool/pgbackrest \
 && pgbackrest version
