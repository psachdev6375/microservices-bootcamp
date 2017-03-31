nohup java -jar deployables/word-server-1.0.jar --spring.profiles.active=verb > verb.log &
nohup java -jar deployables/word-server-1.0.jar --spring.profiles.active=adjective > adjective.log &
nohup java -jar deployables/word-server-1.0.jar --spring.profiles.active=noun > noun.log &
nohup java -jar deployables/word-server-1.0.jar --spring.profiles.active=subject > subject.log &
nohup java -jar deployables/word-server-1.0.jar --spring.profiles.active=article > article.log &
nohup java -jar deployables/sentence-composition-server-1.jar > sentence.log &


