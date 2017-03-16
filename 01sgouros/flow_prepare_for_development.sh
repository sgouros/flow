DATE="$(date +"%Y.%b.%d_%H.%M")"

echo "running: flow_prepare_for_development.sh"
echo "--------- dropbox status" 
dropbox status
echo " "

echo "1. Cleaning"

echo -n "   1.1 delete logs to obtain space (rm -rf ~/Dropbox/my_code/RoR/code/aptana/flow/log/*)..."
rm -rf ~/Dropbox/my_code/RoR/code/aptana/flow/log/*
echo  "done."

echo -n "   1.2 delete tmp files to obtain space (rm -rf ~/Dropbox/my_code/RoR/code/aptana/flow/tmp/*)..."
rm -rf ~/Dropbox/my_code/RoR/code/aptana/flow/tmp/*
echo "done."
echo " "

echo "2. backup dev flow to home"

echo -n "   2.1 creating directory ~/flowbackup/$DATE/"
echo -n " ..."
mkdir -p ~/flowbackup/$DATE/
echo "done."

echo -n "   2.2 copying directory ~/Dropbox/my_code/RoR/code/aptana/flow/ to ~/flowbackup/$DATE/"
echo -n " ..."
cp -R ~/Dropbox/my_code/RoR/code/aptana/flow/ ~/flowbackup/$DATE/
echo "done."
echo " "

echo "3. backup dev flow to dropbox"

echo -n "   3.1 creating directory ~/Dropbox/my_code/RoR/code/backup/flow/$DATE/"
echo -n " ..."
mkdir -p ~/Dropbox/my_code/RoR/code/backup/flow/$DATE/
echo "done."

echo -n "   3.2 copying directory ~/Dropbox/my_code/RoR/code/aptana/flow/ to ~/Dropbox/my_code/RoR/code/backup/flow/$DATE/"
echo -n " ..."
cp -R ~/Dropbox/my_code/RoR/code/aptana/flow/ ~/Dropbox/my_code/RoR/code/backup/flow/$DATE/
echo "done."
echo " "

printf "4. Do you want to get the hot sqlite3 DB to develop? (y/n): "
read INPT
if [ "$INPT" = "y" ]; then 
  echo -n "   copy hot sqlite3 (cp -R ~/Dropbox/my_code/RoR/htdocs/flow/db/development.sqlite3 to ~/Dropbox/my_code/RoR/code/aptana/flow/db/development.sqlite3)..."
  cp -R ~/Dropbox/my_code/RoR/htdocs/flow/db/development.sqlite3 ~/Dropbox/my_code/RoR/code/aptana/flow/db/development.sqlite3
  echo "done."
  echo " "
else
  echo "   keeping development database."
  echo " "
fi

#echo "5. running test suite"
#cd ~/Dropbox/my_code/RoR/code/aptana/flow/
#rake test:units

echo "Happy coding George!!"






