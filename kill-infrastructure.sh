if [ "$1" = "zuul" ] || [ "$#" == 0 ]
then
   kill -9 `ps aux | grep zuul | awk '{print $2}'` 
   echo 'Killed Zuul Proxy'
fi
if [ "$1" = "eureka" ] || [ "$#" == 0 ]
then
   kill -9 `ps aux | grep eureka | awk '{print $2}'` 
   echo 'Killed Eureka Server '
fi 
if [ "$1" = "config" ] || [ "$#" == 0 ]
then
   kill -9 `ps aux | grep config | awk '{print $2}'` 
   echo 'Killed Config Server'
fi 
