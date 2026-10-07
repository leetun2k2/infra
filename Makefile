api-gateway-up:
	docker-compose -f clusters/prod/api-gateway/docker-compose.yaml  up -d

api-gateway-down:
	docker-compose -f clusters/prod/api-gateway/docker-compose.yaml  down