# docker-composeコマンド
up:
	docker-compose up -d
build:
	docker-compose up -d --build
down:
	docker-compose down
restart:
	docker-compose down
	docker-compose up -d --build

# nuxtの導入
nuxt:
	npx create-nuxt-app frontend
	docker-compose up -d --build

# backend
backend:
	docker-compose exec app composer install
	docker-compose exec app cp .env.example .env
	docker-compose exec app php artisan key:generate
	docker-compose exec app php artisan migrate

# typescriptの導入(ファイルの追記あり)
typescript:
	docker-compose exec front npm install --save-dev @nuxt/types
	docker-compose exec front touch shims-vue.d.ts

# composition-apiの導入(ファイルの追記あり)
composition-api:
	docker-compose exec front npm install --save @vue/composition-api

# storybookの起動
storybook:
	docker-compose exec front npx sb init
	docker-compose exec front npm run storybook
	docker-compose exec front npm install sass-loader@10.1.1 node-sass --save-dev

# storybookの再起動
re-storybook:
	docker-compose exec front npm run storybook




