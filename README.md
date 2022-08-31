1) check vpc id exist or not
    user enter vpc id after apply command
    run bash script file using external data source 
    pass entered vpc id as perameter to the bash script
    get entered perameter and fire aws cli command for find vpc id 
    get response from command 
    pass that response to output of data source 
    get output to terraform file
    conditionally check id is existed or not and after that execute below things
2) if exist -> create ec2
3) if not exist -> not create any resource