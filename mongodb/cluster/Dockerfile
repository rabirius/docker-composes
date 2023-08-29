FROM mongo:7.0

COPY keys/keyfile /opt/keyfile
RUN chown 999:999 /opt/keyfile

CMD ["mongod"]
