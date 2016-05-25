# friendly-remove

A simple bash script which overrides the "rm" command in linux. In this prototype, we are just overriding the "/usr/bin/rm" command in  the bash script using  "alias" command. We are temporarly maintaining the deleted files in the ~/.RM-Trash directory. You can restore those deleted files from this derectory within a day. In every midnight,your system will rung cronjobs to deleted the trashed files in RM-Trash directory.


USAGE

1. rm filename or directory or wildcard(*), to remove the file which is going to be stored in ~/.RM-Trash directory.
2. rmf filename or directory or wildcard(*), to permenently delete the files.
3. undo, to restore the lastly trashed(using the command rm) files or directory or both.


PS: If you want to change the cronjobs time limit change the entry in crontab -e file . cronjobs configuration structure,

\n
 # ┌───────────── min (0 - 59) \n
 # │ ┌────────────── hour (0 - 23)\n
 # │ │ ┌─────────────── day of month (1 - 31)\n
 # │ │ │ ┌──────────────── month (1 - 12)\n
 # │ │ │ │ ┌───────────────── day of week (0 - 6) (0 to 6 are Sunday to Saturday, or use names; 7 is Sunday, the same as 0)\n
 # │ │ │ │ │\n
 # │ │ │ │ │\n
 # * * * * * \n


