#! /bin/bash
process= curl http://35.222.88.62:31031/engine-rest/history/process-instance/count? | awk -F: '{print $2}' | sed  's/}/ /g'
nreplicas=1

if [ [$process -ge 50 ] && [ $nreplicas -lt 4 ] ];
then
$nreplicas = $nreplicas + 1

 kubectl scale --replicas=$nreplicas deployment camunda-deployment
 
elif [ [ $process ge 20 ] && [ $nreplicas lt 1 ] ];
then
$nreplicas =$nreplicas -1

 kubectl scale --replicas=$nreplicas deployment camunda-deployment 
 
else
 kubectl scale --replicas=$nreplicas deployment camunda-deployment  
 fi
 

