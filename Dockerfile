# npm이 들어있는 베이스 이미지를 찾아야 하는데 그것들 중 하나가 node이미지이다
FROM node:10

# 이게 없으면 npm WARN saveError ENOENT: no such file or directory, open '/package.json' 에러가 뜬다
# 왜냐하면 도커 컨테이너 밖에 package.json 및 다른 파일들(server.js 등)이 있기 때문 
# COPY: 로컬에 있는 파일을 도커 컨테이너의 지정된 장소에 복사

# 현재 디렉토리의 모든 파일 전체를 복사해서 컨테이너 안으로 집어넣는다.
COPY ./ ./

# package.json에 명시되어있는 종속성들을 웹에서 자동으로 다운받아서 설치해준다.
RUN npm install

# 노드 웹 서버를 작동시키기 위한 명령어
CMD ["node", "server.js"]