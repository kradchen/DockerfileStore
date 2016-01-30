FROM    tutum/centos:7
MAINTAINER KradChen <reinhard1203@163.com>
RUN yum install -y gcc make gcc-c++
RUN curl -sL https://rpm.nodesource.com/setup_4.x | bash -
RUN yum install -y nodejs
RUN node -v
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install express serve-favicon  morgan ejs body-parser \
    cookie-parser less-middleware

ADD . /src

RUN cd /src

EXPOSE 1300


CMD ["/bin/bash"]
