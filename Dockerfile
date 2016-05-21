FROM   node:4.4.4-wheezy
MAINTAINER KradChen <reinhard1203@163.com>
RUN node -v
ADD ./ src
EXPOSE 3000
WORKDIR /src
RUN npm install
WORKDIR /src/bin
CMD ["nodejs","www"]
