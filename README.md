<B> Microservices Bootcamp </B>

Consists of 5 projects which showcase a complete microservices application with the following capabilities: 
<ul>
<li>1. Service Discovery using Eureka </li>
<li>2. Circuit Breakers using Hysterix</li>
<li>3. Client Side loadbalancing using Ribbon</li> 
<li>4. Spring Cloud Netflix, Spring Configuration and Spring Profiles </li>
<li>5. Zuul for proxy </li>
</ul>
Application: The application consists of the following projects: 
<ul>
<li>1. eureka-server: Eureka Server for service discovery</li>
<li>2. config-server: Spring configuration server containing configuration for various profiles </li>
<li>3. word-server: A microservice which can be run with 5 different profiles, namely article, noun, verb, subject and adjective. Based on the profile it exposes one operation which returns one word based on the profiles. The set of words are picked up from configuration. </li>
<li>4. sentence-server-solution: A microservice which builds  complete sentence by calling the word-server 5 times. The solution leverages Hysterix and ribbon </li>
<li>5. zuul-proxy: Zuul server acting as a service proxy. </li>
<li>6. configuration: Configuration folder which contains yml file for each profile and zuul. Spring config server connects to this directory and retrieves appropriate configuration as and when requested. </li>
</ul>

Steps to get it up and running 
<ul>
  <li>1. Run build-all.sh script to build all projects. This leverages maven. Java needs to be @ 1.8 minimum </li>
  <li>2. Start config server using ./start-infrastructure config. This starts a configuration server listening at port 8001 on localhost and gets the configuration from configuration directory of this GitHub repository (hence you need to be connected to the internet)</li>
  <li>3. Start Eureka using ./start-infrastructure eureka. This starts a Eureka server listening at port 8010 on localhost. The console can be accessed @ http://localhost:8010</li>
  <li>4. Start Zuul proxy using ./start-infrastructure zuul. This starts a zuul instance listening on port 8080. Zuul server registers with to Eureka automatically. You should be able to see it pop up on the Eureka console. </li>
  <li>5. Start Sentence solution using ./start-microservices sentence. This starts up the sentence service listering at port 8020. It will register with Eureka automatically and can be accessed at http://localhost:8020/sentence or http://localhost:8080/sentence/sentence (through Zuul). Since up till now no other services have been started, you can see Hystrix at play. Hystrix monitor can be seen at http://localhost:8020/hystrix.console with stream as http://localhost:8020/hystrix.stream</li>
  <li>6. Start each of the constituent services by the following commands: <br>
    ./start-microservices adjective <br>
    ./start-microservices article<br>
    ./start-microservices noun <br>
    ./start-microservices subject <br>
    ./start-microservices verb <br> </li>
  <li>7. Start endless loop on calling sentence by ./call-sentence</li>
</ul>
