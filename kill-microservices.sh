if [ "$1" = "verb" ] || [ "$#" == 0 ]
then
   kill -9 `ps aux | grep verb | awk '{print $2}'` 
   echo 'Killed all Verb Servers'
fi
if [ "$1" = "adjective" ] || [ "$#" == 0 ]
then
   kill -9 `ps aux | grep adjective | awk '{print $2}'` 
   echo 'Killed all Adjective Servers'
fi 
if [ "$1" = "noun" ] || [ "$#" == 0 ]
then
   kill -9 `ps aux | grep noun | awk '{print $2}'` 
   echo 'Killed all Noun Servers'
fi 
if [ "$1" = "subject" ] || [ "$#" == 0 ]
then
   kill -9 `ps aux | grep subject | awk '{print $2}'` 
   echo 'Killed all Subject Servers'
fi 
if [ "$1" = "article" ] || [ "$#" == 0 ]
then
   kill -9 `ps aux | grep article | awk '{print $2}'` 
   echo 'Killed all Article Servers'
fi 
if [ "$1" = "sentence" ] || [ "$#" == 0 ]
then    
   kill -9 `ps aux | grep sentence | awk '{print $2}'` 
   echo 'Killed all Sentence Servers'
fi
