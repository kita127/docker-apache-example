# docker-apache-example
Docker + Apache + Laravel の Web アプリケーションサンプル

詳細は以下を参照
https://kita127.hatenablog.com/entry/2022/10/02/145614


## description

### Initialize

```
$ make init
```

### Terminate

```
$ make down
```

### Usage

1. Initialize 実行
1. `apache` コンテナに入る
    1. `$ docker compose exec apache bash`
1. `$ npm run dev` を実行する
1.  ブラウザから `http://localhost:80` にアクセス

## Enviroment

- main branch
    - Apache
    - MySQL
    - PHP
    - Laravel
    - Vite
    - Node.js
    - xdebug
- vue branch
    - Vue.js
    - TypeScript
    - Chrome DevTool などから開発者ツールを開きコンソールに Vue のバージョンが表示されればOK

## Vite

フロントは更新したら `npm run build` する。
開発中は `npm run dev`。
