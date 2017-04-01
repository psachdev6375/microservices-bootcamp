if [ "$1" = "verb" ] || [ "$#" == 0 ]
then 
   nohup java -jar deployables/word-server-1.0.jar --spring.profiles.active=verb > verb$RANDOM.log &
   echo 'Started Verb Server'
fi
if [ "$1" = "adjective" ] || [ "$#" == 0 ]
then
   nohup java -jar deployables/word-server-1.0.jar --spring.profiles.active=adjective > adjective$RANDOM.log &
   echo 'Started Adjective Server'
fi 
if [ "$1" = "noun" ] || [ "$#" == 0 ]
then
   #nohup java -jar deployables/word-server-1.0.jar --spring.profiles.active=noun > noun$RANDOM.log &
   echo 'Started Noun Server'
fi 
if [ "$1" = "subject" ] || [ "$#" == 0 ]
then
   #nohup java -jar deployables/word-server-1.0.jar --spring.profiles.active=subject > subject$RANDOM.log &
   echo 'Started Subject Server'
fi 
if [ "$1" = "article" ] || [ "$#" == 0 ]
then
   #nohup java -jar deployables/word-server-1.0.jar --spring.profiles.active=article > article$RANDOM.log &
   echo 'Started Article Server'
fi 
if [ "$1" = "sentence" ] || [ "$#" == 0 ]
then
   #nohup java -jar deployables/sentence-composition-server-1.jar > sentence$RANDOM.log &
   echo 'Started Sentence Server'
fi
