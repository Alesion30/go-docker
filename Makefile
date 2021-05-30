ARG := -f docker-compose.yml
DOCKER_CMD := docker-compose $(ARG)

build: # イメージのビルド
	$(DOCKER_CMD) build

up: # 立ち上げ
	$(DOCKER_CMD) up -d

run: # main.go 実行
	$(DOCKER_CMD) exec golang go run main.go

run-dev: # main.go 実行（ホットリロード）
	$(DOCKER_CMD) exec golang realize start

img: # image一覧
	docker images

container: # コンテナ一覧
	docker ps

container-all: # コンテナ一覧（全て）
	docker ps -a
