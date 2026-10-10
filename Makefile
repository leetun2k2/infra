api-gateway-up:
	docker-compose -f clusters/prod/api-gateway/docker-compose.yaml up -d --force-recreate

go-auth-up:
	docker-compose -f clusters/prod/go-auth/docker-compose.yaml up -d --force-recreate

web-admin-up:
	docker-compose -f clusters/prod/web-admin/docker-compose.yaml up -d --force-recreate
	docker exec api-gateway nginx -s reload
