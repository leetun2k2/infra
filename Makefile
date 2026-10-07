api-gateway-up:
	docker-compose -f clusters/prod/api-gateway/docker-compose.yaml  up -d

go-auth-up:
	docker-compose -f clusters/prod/go-auth/docker-compose.yaml up -d
