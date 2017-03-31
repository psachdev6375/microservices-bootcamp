nohup java -jar deployables/config-server-1.2.7.RELEASE.jar > configserver.log &
echo 'Started Configserver'
nohup java -jar deployables/eureka-server-1.2.7.RELEASE.jar > eurekaserver.log & 
echo 'Started Eureka server'
sleep 10
nohup java -jar deployables/zuul-proxy-1.0.jar > zuulproxy.log &
echo 'Started Zuul Proxy'
