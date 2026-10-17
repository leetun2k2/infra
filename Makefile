gateway-test:
	docker exec gateway nginx -t

gateway-reload:
	docker exec gateway nginx -s reload

gateway-up:
	docker-compose -f clusters/prod/gateway/docker-compose.yaml up -d --force-recreate

go-auth-up:
	docker-compose -f clusters/prod/go-auth/docker-compose.yaml up -d --force-recreate

web-admin-up:
	docker-compose -f clusters/prod/web-admin/docker-compose.yaml up -d --force-recreate

devops-up:
	docker-compose -f clusters/prod/devops/docker-compose.yaml up -d --force-recreate

