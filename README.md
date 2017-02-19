<B> Microservices Bootcamp </B>

Consists of 5 projects which showcase a complete microservices application with the following capabilities: 
1. Service Discovery using Eureka 
2. Circuit Breakers using Hysterix
3. Client Side loadbalancing using Ribbon 
4. Spring Cloud Netflix, Spring Configuration and Spring Profiles 
5. Zuul for proxy 

Application: The application consists of: 

1. eureka-server: Eureka Server for service discovery
2. config-server: Spring configuration server containing configuration for various profiles 
3. word-server: A microservice which can be run with 5 different profiles, namely article, noun, verb, subject and adjective. Based on the profile it exposes one operation which returns one word based on the profiles. The set of words are picked up from configuration. 
4. sentence-server-solution: A microservice which builds  complete sentence by calling the word-server 5 times. The solution leverages Hysterix and ribbon 
5. zuul-proxy: Zuul server acting as a service proxy. 
