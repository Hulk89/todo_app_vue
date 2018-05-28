# todo_app

> A Vue.js project

## Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
npm run build

# service
npm install -g serve
serve -s .
```

For detailed explanation on how things work, consult the [docs for vue-loader](http://vuejs.github.io/vue-loader).

# Docker settings

```bash
# build Dockerfile
docker build -t app_name .
# run
docker run -p 8080:5000 -d app_name
```