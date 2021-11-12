build:
	docker compose build --force-rm --no-cache
up:
	docker compose up -d
stop:
	docker compose stop
restart:
	docker compose restart
down:
	docker compose down --remove-orphans
remove:
	docker compose down --remove-orphans --volumes
ps:
	docker compose ps
log:
	docker compose logs -f
app:
	docker compose exec app ash
db:
	docker compose exec db bash
