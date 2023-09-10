key:
	mkdir "keys" && openssl rand -base64 756 > keys/keyfile && chmod 400 keys/keyfile

up:
	docker-compose -p mongodb -f docker-compose-replica-v1.yml up -d

down:
	docker-compose -p mongodb -f docker-compose-replica-v1.yml down -v

cluster-init:
	docker exec -it mongodb1 mongosh admin -u admin -p admin --eval 	\
	  "rs.initiate({_id: \"rs0\",members: [{ _id: 0, host: \"mongodb1:27017\" },{ _id: 1, host: \"mongodb2:27017\" },{ _id: 2, host: \"mongodb3:27017\" }]})"

cluster-status:
	docker exec -it mongodb1 mongosh admin -u admin -p admin --eval "rs.status()"
