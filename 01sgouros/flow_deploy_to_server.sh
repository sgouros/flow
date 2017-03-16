DATE="$(date +"%Y.%b.%d_%H:%M")"

echo "--------- Dropbox status ---------"
dropbox status

printf "Do you want to continue (y/n): "
read INPT
if [ "$INPT" = "n" ]; then 
	echo "flow server preparation aborted"
	exit
fi

if [ "$INPT" = "N" ]; then 
	echo "flow server preparation aborted"
	exit
fi

echo "1. backup dev flow to home"

echo -n "   1.1 creating directory ~/flowbackup/$DATE/"
echo -n " ..."
mkdir -p ~/flowbackup/$DATE/
echo "done."

echo -n "   1.2 copying directory ~/Dropbox/my_code/RoR/code/aptana/flow/ to ~/flowbackup/$DATE/"
echo -n " ..."
cp -R ~/Dropbox/my_code/RoR/code/aptana/flow/ ~/flowbackup/$DATE/
echo "done."
echo " "

echo "2. backup hot flow to hot dropbox"
echo -n "   2.1 copying directory ~/Dropbox/my_code/RoR/htdocs/flow/ to ~/Dropbox/my_code/RoR/htdocs/flow_old_versions/$DATE/"
echo -n " ..."
cp -R ~/Dropbox/my_code/RoR/htdocs/flow/ ~/Dropbox/my_code/RoR/htdocs/flow_old_versions/$DATE/
echo "done."
echo " "

echo "3. install dev flow to hot flow"
echo -n "   3.1 copying hot sqlite to safe place (~/Dropbox/my_code/RoR/htdocs/flow_old_versions/development.sqlite3)"
echo -n " ..."
cp ~/Dropbox/my_code/RoR/htdocs/flow/db/development.sqlite3 ~/Dropbox/my_code/RoR/htdocs/flow_old_versions/development.sqlite3
echo "done."

echo -n "   3.2 clean hot flow directory"
echo -n " ..."
rm -r ~/Dropbox/my_code/RoR/htdocs/flow/*
echo "done."

echo "   3.3 copy dev flow directory to hot flow directory"
echo -n "       (copying ~/Dropbox/my_code/RoR/code/aptana/flow/ to directory ~/Dropbox/my_code/RoR/htdocs/flow)"
echo -n " ..."
cp -R ~/Dropbox/my_code/RoR/code/aptana/flow/ ~/Dropbox/my_code/RoR/htdocs/
echo "done."

echo "   3.4 reestablish valid sqlite3 database"
echo -n "       (move ~/Dropbox/my_code/RoR/htdocs/flow_old_versions/development.sqlite3 to ~/Dropbox/my_code/RoR/htdocs/flow/db/development.sqlite3)"
echo -n " ..."
mv ~/Dropbox/my_code/RoR/htdocs/flow_old_versions/development.sqlite3 ~/Dropbox/my_code/RoR/htdocs/flow/db/development.sqlite3
echo "done."

echo -n "   3.5 running migrations"
cd ~/Dropbox/my_code/RoR/htdocs/flow/
echo -n " ..."
rake db:migrate
echo "done."
echo " "


echo "------ DO YOU HAVE ANYTHING TO RUN ON CONSOLE IN ORDER TO MAKE HOT DATABASE VALID ? ------"
echo "       if not, then server is ready."
echo " "



