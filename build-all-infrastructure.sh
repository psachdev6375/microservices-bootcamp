mvn --file config-server/pom.xml clean install
mvn --file eureka-server/pom.xml clean install -DskipTests
mvn --file zuul-proxy/pom.xml clean install
