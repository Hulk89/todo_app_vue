FROM node:carbon

# 앱 디렉터리 생성
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# 앱 의존성 설치
COPY package*.json ./
RUN npm install
RUN npm install -g serve

# 앱 소스 추가
COPY . .

EXPOSE 5000
# https://stackoverflow.com/questions/47034452/how-to-run-production-site-after-build-vue-cli?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
CMD ["serve", "-s", "."]