import_db_dumps:
	./db.restore.sh
dev:
	docker compose -f docker-compose.dev.yml up mongo_dev nginx_dev redis_dev backend 
dev2:
	docker compose -f docker-compose.dev.yml up redis_dev mongo_dev
prod:
	docker compose -f docker-compose.prod.yml up -d nginx certbot redis backend mongo
down:
	docker compose -f docker-compose.dev.yml -f docker-compose.prod.yml down