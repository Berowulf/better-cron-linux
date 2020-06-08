#!/bin/bash
##Hello! welcome to custom cron, look for more # comment lines for instructions and explainations.##
##Now, your first question is most likely "How do I use this?" Well, it's quite simple.##
##First of all, you're going to need to install screen. apt -y install screen ##


while [[ "0" = "0" ]]; do     #This is my lazy way of making sure that the script is constantly looping.
FILE="/root/log.txt"          #This is where the log file will be stored. 
TIME0=$(date +%H:%M)          #This stores the current time inside of a variable called TIME0
TIME1=$(date +%D-%H:%M)       #This stores the current date & time inside of a variable called TIME1
sleep 10;                     #This puts a delay on how fast the script can run, this stops the script from overloading your server.
  if [[ "$TIME0" = "01:00" ]]; then     #This statement says that once TIME0(current time) is equal to 1 AM then run the script.
#Modify "01:00" to whatever time you would like to make the script run. Remember your server timezone may be different from yours!
#Type date into your linux terminal to find out what time your machine is running off of.

##Enter in the commands you want to run below##

        echo "I am an example! ERASE ME! AND REPLACE" 
       
       
       ##After you enter your commands, save this file and run the following line:
      ## screen -dm -S cron bash cron.sh
      ## To make sure the screen is running, type screen -ls
      ## If no screens are running, try running the script outside of a screen to make sure there are no errors.
      ## Depending on your machine, you may need to change permissions. chmod +x cron.sh
       ##end of commands##
       ##The following set of commands will simply create a log file that will tel you when your commands were last ran.
       sudo /bin/cat <<-EOM >>$FILE
    #!/bin/bash
    Command was last run at $TIME1
EOM
       sleep 60;
fi
done
