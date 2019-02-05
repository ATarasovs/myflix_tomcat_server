FROM tomcat

MAINTAINER Aleksandrs Tarasovs <a.tarasov1209@gmail.com>

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY web.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/web.xml
COPY myflix/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080