docker build -t tomcat-server .
sleep 20
docker run -d -p 80:8080 --name tomcat-server tomcat-server