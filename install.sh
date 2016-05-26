
mkdir ~/.RM-Trash
DIR=$PWD

echo "
if [ -f $PWD/bash/rmbash ]; then
	source $PWD/bash/rmbash 
fi " >> ~/.bash_profile


crontab -l | { cat; echo "0 0 * * * rmf -rvf ~/.RM-Trash/*"; } | crontab -


source ~/.bash_profile

echo " INSTALLED SUCCESSFULLY"

echo "***HELP*** \n 1.rm filename,directory or wildcard(*) , --to trash the file to the RM-Trash directory(Automatic file cleaning process will take place at every day 12AM) \n 2.rmf filename or directory, --to permenently remove the file or directory \n 3. undo --to undo the last removed action"
