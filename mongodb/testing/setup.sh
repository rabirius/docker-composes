#!/bin/bash

mkdir "keys"
openssl rand -base64 756 > keys/keyfile
chmod 400 keys/keyfile

docker-compose -p mongodb -f docker-compose-replica-v1.yml up -d

docker exec -it mongo1 mongosh --eval "rs.initiate({
 _id: \"rs0\",
 members: [
   {_id: 0, host: \"mongo1\"},
   {_id: 1, host: \"mongo2\"},
   {_id: 2, host: \"mongo3\"}
 ]
})"