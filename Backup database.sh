name :"Backup database"
on:
  schedule:
  #Run daily at midnight
   - cron: "0 4 * * *"
jobs:
 source main_script.sh