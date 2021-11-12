FROM minio/minio:latest

RUN microdnf install vi

RUN curl https://dl.min.io/client/mc/release/linux-amd64/mc \
    --create-dirs \
    -o /bin/mc

RUN chmod +x /bin/mc
#RUN mc alias set bucket http://127.0.0.1:9000 GNL849H17WYC29TF824C jHmF32OkjF9wJp1JsewtTmK3SfqTQxVI7RUkICI4


ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]

VOLUME ["/data"]

CMD ["minio"]